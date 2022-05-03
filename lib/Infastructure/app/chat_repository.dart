import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:chatapp_dda/Domain/user/i_user_repository.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/chat_failures.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:chatapp_dda/Infastructure/app/chat_dtos.dart';
import 'package:chatapp_dda/Infastructure/core/firestore_helper.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository extends IChatRepository {
  final FirebaseFirestore _firestore;
  final IUserRepository _userRepository;
  ChatRepository(this._firestore, this._userRepository);

  @override
  Stream<Either<ChatFailure, List<Chat>>> watchAllChat() async* {
    final myProfile = await _userRepository
        .getMyProfile()
        .then((value) => value.fold((l) => null, (r) => r));

    final userchats = await _firestore.chatDocuments();
    yield* userchats.snapshots().map(
      (snapshot) {
        final sortedDocs = List.from(snapshot.docs)
          ..sort((d1, d2) {
            return ((d2.get('serverTimeStamp') ?? Timestamp.now()) as Timestamp)
                .compareTo((d1.get('serverTimeStamp') ?? Timestamp.now())
                    as Timestamp);
          });
        return right<ChatFailure, List<Chat>>(
          sortedDocs
              .map((doc) => ChatDto.fromFirestore(doc)
                  .toDomain(myProfile!.id.getOrCrash()))
              .toList(),
        );
      },
    ).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatFailure.insufficientPermission());
      } else {
        return left(const ChatFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ChatFailure, List<Message>>> watchAllMesage(Chat chat) async* {
    final chatDoc = await _firestore.messageDocument(chat.id.getOrCrash());
    final myProfile = await _userRepository
        .getMyProfile()
        .then((value) => value.fold((l) => null, (r) => r));
    yield* chatDoc
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ChatFailure, List<Message>>(
            snapshot.docs
                .map((doc) => MessageDto.fromFirestore(doc)
                    .toDomain(myProfile!.id.getOrCrash()))
                .toList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatFailure.insufficientPermission());
      } else {
        return left(const ChatFailure.unexpected());
      }
    });

    
  }

  @override
  Future<Either<ChatFailure, Chat>> createGroupChat(Chat chat) async {
    try {
      final chatCollection = _firestore.chatCollection();
      final myProfile = await _userRepository
          .getMyProfile()
          .then((value) => value.fold((l) => null, (r) => r));
      chat.usersMap[myProfile!.id.getOrCrash()] = myProfile;
      chat = chat.copyWith(
        id: UniqueId.fromUniqueString(_firestore.getNewChatId()),
        usersMap: chat.usersMap,
      );
      final chatDto = ChatDto.fromDomain(chat);
      await chatCollection.doc(chatDto.id).set(chatDto.toJson());
      return right(chat);
    } on FirebaseException {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> createChat(Chat chat) async {
    try {
      final chatCollection = _firestore.chatCollection();

      final chatDto = ChatDto.fromDomain(chat.copyWith(
        exists: true,
      ));
      await chatCollection.doc(chatDto.id).set(chatDto.toJson());
      return right(unit);
    } on FirebaseException {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> add(Chat chat) async {
    try {
      final chatCollection = _firestore.chatCollection();
      final chatDto = ChatDto.fromDomain(chat);
      await chatCollection.doc(chatDto.id).update(chatDto.toJson());
      return right(unit);
    } on FirebaseException {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> delete(Message message, Chat chat) async {
    try {
      final chatCollection = _firestore.chatCollection();
      final chatDto = ChatDto.fromDomain(chat);
      await chatCollection
          .doc(chatDto.id)
          .messageCollection
          .doc(message.id)
          .delete();
      return right(unit);
    } on FirebaseException {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> sendMessage(
      Message message, Chat chat) async {
    try {
      final myProfile = await _userRepository
          .getMyProfile()
          .then((value) => value.fold((l) => null, (r) => r));
      final chatCollection = _firestore.chatCollection();
      final chatDto = ChatDto.fromDomain(chat);
      final messageDto = MessageDto.fromDomain(message.copyWith(
        userProfile: myProfile!,
      ));

      await chatCollection
          .doc(chatDto.id)
          .messageCollection
          .add(messageDto.toJson());

      _updateLastMessage(chatDto, messageDto);
      return right(unit);
    } on FirebaseException {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Chat>> openChatWithUserId(
      UserProfile userProfile) async {
    final getChat =
        await _firestore.getChatIdWithUserId(userProfile.id.getOrCrash());
    final isAlreadyInChat = await getChat.get();
    final myProfile = await _userRepository
        .getMyProfile()
        .then((value) => value.fold((l) => null, (r) => r));

    if (isAlreadyInChat.size == 0) {
      if (myProfile == null) {
        return left(const ChatFailure.unexpected());
      }

      return right(Chat.empty().copyWith(
        id: UniqueId.fromUniqueString(_firestore.getNewChatId()),
        isGroupChat: false,
        usersMap: {
          userProfile.id.getOrCrash(): userProfile,
          myProfile.id.getOrCrash(): myProfile,
        },
        chatName: userProfile.name,
        exists: false,
      ));
    } else {
      return right(isAlreadyInChat.docs
          .map((doc) =>
              ChatDto.fromFirestore(doc).toDomain(myProfile!.id.getOrCrash()))
          .first);
    }
  }

  Future<Either<ChatFailure, Unit>> _updateLastMessage(
      ChatDto chatDto, MessageDto messageDto) async {
    try {
      final chatCollection = _firestore.chatCollection();

      final updatedChatDto = chatDto.copyWith(lastMessage: messageDto);

      await chatCollection.doc(chatDto.id).set(updatedChatDto.toJson());
      return right(unit);
    } on FirebaseException {
      return left(const ChatFailure.unexpected());
    }
  }
}
