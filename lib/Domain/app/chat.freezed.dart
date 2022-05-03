// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required UniqueId id,
      required Map<String, UserProfile> usersMap,
      required bool isGroupChat,
      required Message lastMessage,
      String? chatName,
      String? groupChatPhoto,
      required bool exists}) {
    return _Chat(
      id: id,
      usersMap: usersMap,
      isGroupChat: isGroupChat,
      lastMessage: lastMessage,
      chatName: chatName,
      groupChatPhoto: groupChatPhoto,
      exists: exists,
    );
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  UniqueId get id => throw _privateConstructorUsedError;
  Map<String, UserProfile> get usersMap => throw _privateConstructorUsedError;
  bool get isGroupChat => throw _privateConstructorUsedError;
  Message get lastMessage => throw _privateConstructorUsedError;
  String? get chatName => throw _privateConstructorUsedError;
  String? get groupChatPhoto => throw _privateConstructorUsedError;
  bool get exists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Map<String, UserProfile> usersMap,
      bool isGroupChat,
      Message lastMessage,
      String? chatName,
      String? groupChatPhoto,
      bool exists});

  $MessageCopyWith<$Res> get lastMessage;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? usersMap = freezed,
    Object? isGroupChat = freezed,
    Object? lastMessage = freezed,
    Object? chatName = freezed,
    Object? groupChatPhoto = freezed,
    Object? exists = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      usersMap: usersMap == freezed
          ? _value.usersMap
          : usersMap // ignore: cast_nullable_to_non_nullable
              as Map<String, UserProfile>,
      isGroupChat: isGroupChat == freezed
          ? _value.isGroupChat
          : isGroupChat // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      chatName: chatName == freezed
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupChatPhoto: groupChatPhoto == freezed
          ? _value.groupChatPhoto
          : groupChatPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      exists: exists == freezed
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MessageCopyWith<$Res> get lastMessage {
    return $MessageCopyWith<$Res>(_value.lastMessage, (value) {
      return _then(_value.copyWith(lastMessage: value));
    });
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Map<String, UserProfile> usersMap,
      bool isGroupChat,
      Message lastMessage,
      String? chatName,
      String? groupChatPhoto,
      bool exists});

  @override
  $MessageCopyWith<$Res> get lastMessage;
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? usersMap = freezed,
    Object? isGroupChat = freezed,
    Object? lastMessage = freezed,
    Object? chatName = freezed,
    Object? groupChatPhoto = freezed,
    Object? exists = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      usersMap: usersMap == freezed
          ? _value.usersMap
          : usersMap // ignore: cast_nullable_to_non_nullable
              as Map<String, UserProfile>,
      isGroupChat: isGroupChat == freezed
          ? _value.isGroupChat
          : isGroupChat // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message,
      chatName: chatName == freezed
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupChatPhoto: groupChatPhoto == freezed
          ? _value.groupChatPhoto
          : groupChatPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      exists: exists == freezed
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id,
      required this.usersMap,
      required this.isGroupChat,
      required this.lastMessage,
      this.chatName,
      this.groupChatPhoto,
      required this.exists});

  @override
  final UniqueId id;
  @override
  final Map<String, UserProfile> usersMap;
  @override
  final bool isGroupChat;
  @override
  final Message lastMessage;
  @override
  final String? chatName;
  @override
  final String? groupChatPhoto;
  @override
  final bool exists;

  @override
  String toString() {
    return 'Chat(id: $id, usersMap: $usersMap, isGroupChat: $isGroupChat, lastMessage: $lastMessage, chatName: $chatName, groupChatPhoto: $groupChatPhoto, exists: $exists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chat &&
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
            (identical(other.exists, exists) || other.exists == exists));
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
      exists);

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required UniqueId id,
      required Map<String, UserProfile> usersMap,
      required bool isGroupChat,
      required Message lastMessage,
      String? chatName,
      String? groupChatPhoto,
      required bool exists}) = _$_Chat;

  @override
  UniqueId get id;
  @override
  Map<String, UserProfile> get usersMap;
  @override
  bool get isGroupChat;
  @override
  Message get lastMessage;
  @override
  String? get chatName;
  @override
  String? get groupChatPhoto;
  @override
  bool get exists;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}
