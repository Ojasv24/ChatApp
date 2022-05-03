import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_dtos.freezed.dart';
part 'chat_dtos.g.dart';

@freezed
class ChatDto with _$ChatDto {
  const ChatDto._();
  const factory ChatDto({
    required String id,
    required Map<String, UserProfileDto> usersMap,
    required bool isGroupChat,
    required MessageDto lastMessage,
    String? chatName,
    String? groupChatPhoto,
    @Default(true) bool exits,
    @required @ServerTimestampConverter() FieldValue? serverTimeStamp,
  }) = _ChatDto;

  factory ChatDto.fromDomain(Chat chat) {
    return ChatDto(
      id: chat.id.getOrCrash(),
      isGroupChat: chat.isGroupChat,
      lastMessage: MessageDto.fromDomain(chat.lastMessage),
      usersMap: chat.usersMap
          .map((key, value) => MapEntry(key, UserProfileDto.fromDomain(value))),
      chatName: chat.chatName,
      serverTimeStamp: FieldValue.serverTimestamp(),
      exits: chat.exists,
      groupChatPhoto: chat.groupChatPhoto,
    );
  }
  Chat toDomain(String myId) {
    return Chat(
      id: UniqueId.fromUniqueString(id),
      usersMap:
          usersMap.map((key, value) => MapEntry(key, value.toDomain(myId))),
      chatName: chatName,
      isGroupChat: isGroupChat,
      lastMessage: lastMessage.toDomain(myId),
      exists: exits,
      groupChatPhoto: groupChatPhoto,
    );
  }

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);

  factory ChatDto.fromFirestore(DocumentSnapshot doc) {
    return ChatDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object timestamp) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue? fieldValue) => fieldValue!;
}

class ServerTimestampDateTimeConverter
    implements JsonConverter<DateTime?, Object?> {
  const ServerTimestampDateTimeConverter();

  @override
  DateTime fromJson(Object? timestamp) {
    return timestamp != null
        ? (timestamp as Timestamp).toDate()
        : DateTime.now();
  }

  @override
  Object toJson(DateTime? dateTime) => FieldValue.serverTimestamp();
}

@freezed
class MessageDto with _$MessageDto {
  const MessageDto._();
  const factory MessageDto({
    required String id,
    required String message,
    required UserProfileDto userProfile,
    @required @ServerTimestampDateTimeConverter() DateTime? serverTimeStamp,
  }) = _MessageDto;

  factory MessageDto.fromDomain(Message message) {
    return MessageDto(
      id: message.id,
      message: message.message,
      userProfile: UserProfileDto.fromDomain(message.userProfile),
      serverTimeStamp: message.timeStamp,
    );
  }

  Message toDomain(String myId) {
    return Message(
      id: id,
      isByMe: userProfile.id == myId,
      message: message,
      userProfile: userProfile.toDomain(myId),
      timeStamp: serverTimeStamp ?? DateTime.now(),
    );
  }

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  factory MessageDto.fromFirestore(DocumentSnapshot doc) {
    return MessageDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}

@freezed
class UserProfileDto with _$UserProfileDto {
  const UserProfileDto._();
  const factory UserProfileDto({
    @Default(true) bool exists,
    required String id,
    required String name,
    required String emailId,
    required String profilePhoto,
    required String realName,
    required int backGroundColor,
  }) = _UserProfileDto;

  factory UserProfileDto.fromDomain(UserProfile userProfile) {
    return UserProfileDto(
        emailId: userProfile.emailId,
        id: userProfile.id.getOrCrash(),
        name: userProfile.name,
        profilePhoto: userProfile.profilePhoto,
        realName: userProfile.realName,
        backGroundColor: userProfile.backGroundColor);
  }

  UserProfile toDomain(String myId) {
    return UserProfile(
      emailId: emailId,
      name: name,
      id: UniqueId.fromUniqueString(id),
      isMe: id == myId,
      profilePhoto: profilePhoto,
      realName: realName,
      backGroundColor: backGroundColor,
    );
  }

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  factory UserProfileDto.fromFirestore(DocumentSnapshot doc) {
    return UserProfileDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
