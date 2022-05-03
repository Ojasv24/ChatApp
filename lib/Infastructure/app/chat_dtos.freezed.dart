// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) {
  return _ChatDto.fromJson(json);
}

/// @nodoc
class _$ChatDtoTearOff {
  const _$ChatDtoTearOff();

  _ChatDto call(
      {required String id,
      required Map<String, UserProfileDto> usersMap,
      required bool isGroupChat,
      required MessageDto lastMessage,
      String? chatName,
      String? groupChatPhoto,
      bool exits = true,
      @ServerTimestampConverter() FieldValue? serverTimeStamp}) {
    return _ChatDto(
      id: id,
      usersMap: usersMap,
      isGroupChat: isGroupChat,
      lastMessage: lastMessage,
      chatName: chatName,
      groupChatPhoto: groupChatPhoto,
      exits: exits,
      serverTimeStamp: serverTimeStamp,
    );
  }

  ChatDto fromJson(Map<String, Object?> json) {
    return ChatDto.fromJson(json);
  }
}

/// @nodoc
const $ChatDto = _$ChatDtoTearOff();

/// @nodoc
mixin _$ChatDto {
  String get id => throw _privateConstructorUsedError;
  Map<String, UserProfileDto> get usersMap =>
      throw _privateConstructorUsedError;
  bool get isGroupChat => throw _privateConstructorUsedError;
  MessageDto get lastMessage => throw _privateConstructorUsedError;
  String? get chatName => throw _privateConstructorUsedError;
  String? get groupChatPhoto => throw _privateConstructorUsedError;
  bool get exits => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDtoCopyWith<ChatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDtoCopyWith<$Res> {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) then) =
      _$ChatDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Map<String, UserProfileDto> usersMap,
      bool isGroupChat,
      MessageDto lastMessage,
      String? chatName,
      String? groupChatPhoto,
      bool exits,
      @ServerTimestampConverter() FieldValue? serverTimeStamp});

  $MessageDtoCopyWith<$Res> get lastMessage;
}

/// @nodoc
class _$ChatDtoCopyWithImpl<$Res> implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._value, this._then);

  final ChatDto _value;
  // ignore: unused_field
  final $Res Function(ChatDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? usersMap = freezed,
    Object? isGroupChat = freezed,
    Object? lastMessage = freezed,
    Object? chatName = freezed,
    Object? groupChatPhoto = freezed,
    Object? exits = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usersMap: usersMap == freezed
          ? _value.usersMap
          : usersMap // ignore: cast_nullable_to_non_nullable
              as Map<String, UserProfileDto>,
      isGroupChat: isGroupChat == freezed
          ? _value.isGroupChat
          : isGroupChat // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageDto,
      chatName: chatName == freezed
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupChatPhoto: groupChatPhoto == freezed
          ? _value.groupChatPhoto
          : groupChatPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      exits: exits == freezed
          ? _value.exits
          : exits // ignore: cast_nullable_to_non_nullable
              as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }

  @override
  $MessageDtoCopyWith<$Res> get lastMessage {
    return $MessageDtoCopyWith<$Res>(_value.lastMessage, (value) {
      return _then(_value.copyWith(lastMessage: value));
    });
  }
}

/// @nodoc
abstract class _$ChatDtoCopyWith<$Res> implements $ChatDtoCopyWith<$Res> {
  factory _$ChatDtoCopyWith(_ChatDto value, $Res Function(_ChatDto) then) =
      __$ChatDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Map<String, UserProfileDto> usersMap,
      bool isGroupChat,
      MessageDto lastMessage,
      String? chatName,
      String? groupChatPhoto,
      bool exits,
      @ServerTimestampConverter() FieldValue? serverTimeStamp});

  @override
  $MessageDtoCopyWith<$Res> get lastMessage;
}

/// @nodoc
class __$ChatDtoCopyWithImpl<$Res> extends _$ChatDtoCopyWithImpl<$Res>
    implements _$ChatDtoCopyWith<$Res> {
  __$ChatDtoCopyWithImpl(_ChatDto _value, $Res Function(_ChatDto) _then)
      : super(_value, (v) => _then(v as _ChatDto));

  @override
  _ChatDto get _value => super._value as _ChatDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? usersMap = freezed,
    Object? isGroupChat = freezed,
    Object? lastMessage = freezed,
    Object? chatName = freezed,
    Object? groupChatPhoto = freezed,
    Object? exits = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_ChatDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usersMap: usersMap == freezed
          ? _value.usersMap
          : usersMap // ignore: cast_nullable_to_non_nullable
              as Map<String, UserProfileDto>,
      isGroupChat: isGroupChat == freezed
          ? _value.isGroupChat
          : isGroupChat // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageDto,
      chatName: chatName == freezed
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupChatPhoto: groupChatPhoto == freezed
          ? _value.groupChatPhoto
          : groupChatPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      exits: exits == freezed
          ? _value.exits
          : exits // ignore: cast_nullable_to_non_nullable
              as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatDto extends _ChatDto {
  const _$_ChatDto(
      {required this.id,
      required this.usersMap,
      required this.isGroupChat,
      required this.lastMessage,
      this.chatName,
      this.groupChatPhoto,
      this.exits = true,
      @ServerTimestampConverter() this.serverTimeStamp})
      : super._();

  factory _$_ChatDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChatDtoFromJson(json);

  @override
  final String id;
  @override
  final Map<String, UserProfileDto> usersMap;
  @override
  final bool isGroupChat;
  @override
  final MessageDto lastMessage;
  @override
  final String? chatName;
  @override
  final String? groupChatPhoto;
  @JsonKey(defaultValue: true)
  @override
  final bool exits;
  @override
  @ServerTimestampConverter()
  final FieldValue? serverTimeStamp;

  @override
  String toString() {
    return 'ChatDto(id: $id, usersMap: $usersMap, isGroupChat: $isGroupChat, lastMessage: $lastMessage, chatName: $chatName, groupChatPhoto: $groupChatPhoto, exits: $exits, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatDto &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.usersMap, usersMap) &&
            (identical(other.isGroupChat, isGroupChat) ||
                other.isGroupChat == isGroupChat) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.chatName, chatName) ||
                other.chatName == chatName) &&
            (identical(other.groupChatPhoto, groupChatPhoto) ||
                other.groupChatPhoto == groupChatPhoto) &&
            (identical(other.exits, exits) || other.exits == exits) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(usersMap),
      isGroupChat,
      lastMessage,
      chatName,
      groupChatPhoto,
      exits,
      serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$ChatDtoCopyWith<_ChatDto> get copyWith =>
      __$ChatDtoCopyWithImpl<_ChatDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatDtoToJson(this);
  }
}

abstract class _ChatDto extends ChatDto {
  const factory _ChatDto(
      {required String id,
      required Map<String, UserProfileDto> usersMap,
      required bool isGroupChat,
      required MessageDto lastMessage,
      String? chatName,
      String? groupChatPhoto,
      bool exits,
      @ServerTimestampConverter() FieldValue? serverTimeStamp}) = _$_ChatDto;
  const _ChatDto._() : super._();

  factory _ChatDto.fromJson(Map<String, dynamic> json) = _$_ChatDto.fromJson;

  @override
  String get id;
  @override
  Map<String, UserProfileDto> get usersMap;
  @override
  bool get isGroupChat;
  @override
  MessageDto get lastMessage;
  @override
  String? get chatName;
  @override
  String? get groupChatPhoto;
  @override
  bool get exits;
  @override
  @ServerTimestampConverter()
  FieldValue? get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$ChatDtoCopyWith<_ChatDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
class _$MessageDtoTearOff {
  const _$MessageDtoTearOff();

  _MessageDto call(
      {required String id,
      required String message,
      required UserProfileDto userProfile,
      @ServerTimestampDateTimeConverter() DateTime? serverTimeStamp}) {
    return _MessageDto(
      id: id,
      message: message,
      userProfile: userProfile,
      serverTimeStamp: serverTimeStamp,
    );
  }

  MessageDto fromJson(Map<String, Object?> json) {
    return MessageDto.fromJson(json);
  }
}

/// @nodoc
const $MessageDto = _$MessageDtoTearOff();

/// @nodoc
mixin _$MessageDto {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserProfileDto get userProfile => throw _privateConstructorUsedError;
  @ServerTimestampDateTimeConverter()
  DateTime? get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String message,
      UserProfileDto userProfile,
      @ServerTimestampDateTimeConverter() DateTime? serverTimeStamp});

  $UserProfileDtoCopyWith<$Res> get userProfile;
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res> implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  final MessageDto _value;
  // ignore: unused_field
  final $Res Function(MessageDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? userProfile = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileDto,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $UserProfileDtoCopyWith<$Res> get userProfile {
    return $UserProfileDtoCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }
}

/// @nodoc
abstract class _$MessageDtoCopyWith<$Res> implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(
          _MessageDto value, $Res Function(_MessageDto) then) =
      __$MessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String message,
      UserProfileDto userProfile,
      @ServerTimestampDateTimeConverter() DateTime? serverTimeStamp});

  @override
  $UserProfileDtoCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$MessageDtoCopyWithImpl<$Res> extends _$MessageDtoCopyWithImpl<$Res>
    implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(
      _MessageDto _value, $Res Function(_MessageDto) _then)
      : super(_value, (v) => _then(v as _MessageDto));

  @override
  _MessageDto get _value => super._value as _MessageDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? userProfile = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_MessageDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileDto,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageDto extends _MessageDto {
  const _$_MessageDto(
      {required this.id,
      required this.message,
      required this.userProfile,
      @ServerTimestampDateTimeConverter() this.serverTimeStamp})
      : super._();

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDtoFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final UserProfileDto userProfile;
  @override
  @ServerTimestampDateTimeConverter()
  final DateTime? serverTimeStamp;

  @override
  String toString() {
    return 'MessageDto(id: $id, message: $message, userProfile: $userProfile, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, message, userProfile, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$MessageDtoCopyWith<_MessageDto> get copyWith =>
      __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDtoToJson(this);
  }
}

abstract class _MessageDto extends MessageDto {
  const factory _MessageDto(
          {required String id,
          required String message,
          required UserProfileDto userProfile,
          @ServerTimestampDateTimeConverter() DateTime? serverTimeStamp}) =
      _$_MessageDto;
  const _MessageDto._() : super._();

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  UserProfileDto get userProfile;
  @override
  @ServerTimestampDateTimeConverter()
  DateTime? get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$MessageDtoCopyWith<_MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
class _$UserProfileDtoTearOff {
  const _$UserProfileDtoTearOff();

  _UserProfileDto call(
      {bool exists = true,
      required String id,
      required String name,
      required String emailId,
      required String profilePhoto,
      required String realName,
      required int backGroundColor}) {
    return _UserProfileDto(
      exists: exists,
      id: id,
      name: name,
      emailId: emailId,
      profilePhoto: profilePhoto,
      realName: realName,
      backGroundColor: backGroundColor,
    );
  }

  UserProfileDto fromJson(Map<String, Object?> json) {
    return UserProfileDto.fromJson(json);
  }
}

/// @nodoc
const $UserProfileDto = _$UserProfileDtoTearOff();

/// @nodoc
mixin _$UserProfileDto {
  bool get exists => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get emailId => throw _privateConstructorUsedError;
  String get profilePhoto => throw _privateConstructorUsedError;
  String get realName => throw _privateConstructorUsedError;
  int get backGroundColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {bool exists,
      String id,
      String name,
      String emailId,
      String profilePhoto,
      String realName,
      int backGroundColor});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object? exists = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? emailId = freezed,
    Object? profilePhoto = freezed,
    Object? realName = freezed,
    Object? backGroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      exists: exists == freezed
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: profilePhoto == freezed
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      realName: realName == freezed
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      backGroundColor: backGroundColor == freezed
          ? _value.backGroundColor
          : backGroundColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(
          _UserProfileDto value, $Res Function(_UserProfileDto) then) =
      __$UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool exists,
      String id,
      String name,
      String emailId,
      String profilePhoto,
      String realName,
      int backGroundColor});
}

/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(
      _UserProfileDto _value, $Res Function(_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _UserProfileDto));

  @override
  _UserProfileDto get _value => super._value as _UserProfileDto;

  @override
  $Res call({
    Object? exists = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? emailId = freezed,
    Object? profilePhoto = freezed,
    Object? realName = freezed,
    Object? backGroundColor = freezed,
  }) {
    return _then(_UserProfileDto(
      exists: exists == freezed
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: profilePhoto == freezed
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      realName: realName == freezed
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      backGroundColor: backGroundColor == freezed
          ? _value.backGroundColor
          : backGroundColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {this.exists = true,
      required this.id,
      required this.name,
      required this.emailId,
      required this.profilePhoto,
      required this.realName,
      required this.backGroundColor})
      : super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDtoFromJson(json);

  @JsonKey(defaultValue: true)
  @override
  final bool exists;
  @override
  final String id;
  @override
  final String name;
  @override
  final String emailId;
  @override
  final String profilePhoto;
  @override
  final String realName;
  @override
  final int backGroundColor;

  @override
  String toString() {
    return 'UserProfileDto(exists: $exists, id: $id, name: $name, emailId: $emailId, profilePhoto: $profilePhoto, realName: $realName, backGroundColor: $backGroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileDto &&
            (identical(other.exists, exists) || other.exists == exists) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.backGroundColor, backGroundColor) ||
                other.backGroundColor == backGroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exists, id, name, emailId,
      profilePhoto, realName, backGroundColor);

  @JsonKey(ignore: true)
  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const factory _UserProfileDto(
      {bool exists,
      required String id,
      required String name,
      required String emailId,
      required String profilePhoto,
      required String realName,
      required int backGroundColor}) = _$_UserProfileDto;
  const _UserProfileDto._() : super._();

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  bool get exists;
  @override
  String get id;
  @override
  String get name;
  @override
  String get emailId;
  @override
  String get profilePhoto;
  @override
  String get realName;
  @override
  int get backGroundColor;
  @override
  @JsonKey(ignore: true)
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
