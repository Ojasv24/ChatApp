// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDto _$$_ChatDtoFromJson(Map<String, dynamic> json) => _$_ChatDto(
      id: json['id'] as String,
      usersMap: (json['usersMap'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, UserProfileDto.fromJson(e as Map<String, dynamic>)),
      ),
      isGroupChat: json['isGroupChat'] as bool,
      lastMessage:
          MessageDto.fromJson(json['lastMessage'] as Map<String, dynamic>),
      chatName: json['chatName'] as String?,
      groupChatPhoto: json['groupChatPhoto'] as String?,
      exits: json['exits'] as bool? ?? true,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_ChatDtoToJson(_$_ChatDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'usersMap': instance.usersMap.map((k, e) => MapEntry(k, e.toJson())),
      'isGroupChat': instance.isGroupChat,
      'lastMessage': instance.lastMessage.toJson(),
      'chatName': instance.chatName,
      'groupChatPhoto': instance.groupChatPhoto,
      'exits': instance.exits,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_MessageDto _$$_MessageDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageDto(
      id: json['id'] as String,
      message: json['message'] as String,
      userProfile:
          UserProfileDto.fromJson(json['userProfile'] as Map<String, dynamic>),
      serverTimeStamp: const ServerTimestampDateTimeConverter()
          .fromJson(json['serverTimeStamp']),
    );

Map<String, dynamic> _$$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'userProfile': instance.userProfile.toJson(),
      'serverTimeStamp': const ServerTimestampDateTimeConverter()
          .toJson(instance.serverTimeStamp),
    };

_$_UserProfileDto _$$_UserProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_UserProfileDto(
      exists: json['exists'] as bool? ?? true,
      id: json['id'] as String,
      name: json['name'] as String,
      emailId: json['emailId'] as String,
      profilePhoto: json['profilePhoto'] as String,
      realName: json['realName'] as String,
      backGroundColor: json['backGroundColor'] as int,
    );

Map<String, dynamic> _$$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'exists': instance.exists,
      'id': instance.id,
      'name': instance.name,
      'emailId': instance.emailId,
      'profilePhoto': instance.profilePhoto,
      'realName': instance.realName,
      'backGroundColor': instance.backGroundColor,
    };
