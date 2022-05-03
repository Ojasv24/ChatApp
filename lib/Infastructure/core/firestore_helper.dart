import 'package:chatapp_dda/Domain/Auth/i_auth_facade.dart';
import 'package:chatapp_dda/Domain/Core/error.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference userCollection() {
    return FirebaseFirestore.instance.collection('users');
  }

  CollectionReference chatCollection() {
    return FirebaseFirestore.instance.collection('chats');
  }

  DocumentReference getUser(String id) {
    return FirebaseFirestore.instance.collection('users').doc(id);
  }

  Future<Query> chatDocuments() async {
    final user = await getIt<IAuthFacade>()
        .getMyProfile()
        .then((value) => value.getOrElse(() => throw NotAuthenticatedError()));

    return FirebaseFirestore.instance
        .collection('chats')
        .where('usersMap.${user.id.getOrCrash()}.exists', isEqualTo: true);
  }

  Future<Query> getChatIdWithUserId(String userId) async {
    final user = await getIt<IAuthFacade>()
        .getMyProfile()
        .then((value) => value.getOrElse(() => throw NotAuthenticatedError()));

    return FirebaseFirestore.instance
        .collection('chats')
        .where('usersMap.${user.id.getOrCrash()}.exists', isEqualTo: true)
        .where('usersMap.$userId.exists', isEqualTo: true)
        .where('isGroupChat', isEqualTo: false);
  }

  String getNewChatId() {
    return FirebaseFirestore.instance.collection('chats').doc().id;
  }

  Future<String> getMyUserID() async {
    final user = await getIt<IAuthFacade>()
        .getMyProfile()
        .then((value) => value.getOrElse(() => throw NotAuthenticatedError()));
    return user.id.getOrCrash();
  }

  Future<Query> messageDocument(String chatId) async {
    return FirebaseFirestore.instance
        .collection('chats')
        .doc(chatId)
        .collection('messages');
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get chatCollection => collection('chat');

  CollectionReference get messageCollection => collection('messages');
}
