// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  _UserProfile call(
      {bool exists = true,
      required UniqueId id,
      required String name,
      required String realName,
      required String emailId,
      required bool isMe,
      required String profilePhoto,
      required int backGroundColor}) {
    return _UserProfile(
      exists: exists,
      id: id,
      name: name,
      realName: realName,
      emailId: emailId,
      isMe: isMe,
      profilePhoto: profilePhoto,
      backGroundColor: backGroundColor,
    );
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  bool get exists => throw _privateConstructorUsedError;
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get realName => throw _privateConstructorUsedError;
  String get emailId => throw _privateConstructorUsedError;
  bool get isMe => throw _privateConstructorUsedError;
  String get profilePhoto => throw _privateConstructorUsedError;
  int get backGroundColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {bool exists,
      UniqueId id,
      String name,
      String realName,
      String emailId,
      bool isMe,
      String profilePhoto,
      int backGroundColor});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? exists = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? realName = freezed,
    Object? emailId = freezed,
    Object? isMe = freezed,
    Object? profilePhoto = freezed,
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
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      realName: realName == freezed
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      profilePhoto: profilePhoto == freezed
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      backGroundColor: backGroundColor == freezed
          ? _value.backGroundColor
          : backGroundColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool exists,
      UniqueId id,
      String name,
      String realName,
      String emailId,
      bool isMe,
      String profilePhoto,
      int backGroundColor});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object? exists = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? realName = freezed,
    Object? emailId = freezed,
    Object? isMe = freezed,
    Object? profilePhoto = freezed,
    Object? backGroundColor = freezed,
  }) {
    return _then(_UserProfile(
      exists: exists == freezed
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      realName: realName == freezed
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      profilePhoto: profilePhoto == freezed
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      backGroundColor: backGroundColor == freezed
          ? _value.backGroundColor
          : backGroundColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserProfile extends _UserProfile {
  const _$_UserProfile(
      {this.exists = true,
      required this.id,
      required this.name,
      required this.realName,
      required this.emailId,
      required this.isMe,
      required this.profilePhoto,
      required this.backGroundColor})
      : super._();

  @JsonKey(defaultValue: true)
  @override
  final bool exists;
  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String realName;
  @override
  final String emailId;
  @override
  final bool isMe;
  @override
  final String profilePhoto;
  @override
  final int backGroundColor;

  @override
  String toString() {
    return 'UserProfile(exists: $exists, id: $id, name: $name, realName: $realName, emailId: $emailId, isMe: $isMe, profilePhoto: $profilePhoto, backGroundColor: $backGroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
            (identical(other.exists, exists) || other.exists == exists) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.isMe, isMe) || other.isMe == isMe) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.backGroundColor, backGroundColor) ||
                other.backGroundColor == backGroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exists, id, name, realName,
      emailId, isMe, profilePhoto, backGroundColor);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);
}

abstract class _UserProfile extends UserProfile {
  const factory _UserProfile(
      {bool exists,
      required UniqueId id,
      required String name,
      required String realName,
      required String emailId,
      required bool isMe,
      required String profilePhoto,
      required int backGroundColor}) = _$_UserProfile;
  const _UserProfile._() : super._();

  @override
  bool get exists;
  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get realName;
  @override
  String get emailId;
  @override
  bool get isMe;
  @override
  String get profilePhoto;
  @override
  int get backGroundColor;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
