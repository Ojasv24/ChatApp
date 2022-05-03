// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_chat_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FreezedChatListTearOff {
  const _$FreezedChatListTearOff();

  _FreezedChatList call({required Message message, DateTime? dateTime}) {
    return _FreezedChatList(
      message: message,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $FreezedChatList = _$FreezedChatListTearOff();

/// @nodoc
mixin _$FreezedChatList {
  Message get message => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedChatListCopyWith<FreezedChatList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedChatListCopyWith<$Res> {
  factory $FreezedChatListCopyWith(
          FreezedChatList value, $Res Function(FreezedChatList) then) =
      _$FreezedChatListCopyWithImpl<$Res>;
  $Res call({Message message, DateTime? dateTime});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$FreezedChatListCopyWithImpl<$Res>
    implements $FreezedChatListCopyWith<$Res> {
  _$FreezedChatListCopyWithImpl(this._value, this._then);

  final FreezedChatList _value;
  // ignore: unused_field
  final $Res Function(FreezedChatList) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$FreezedChatListCopyWith<$Res>
    implements $FreezedChatListCopyWith<$Res> {
  factory _$FreezedChatListCopyWith(
          _FreezedChatList value, $Res Function(_FreezedChatList) then) =
      __$FreezedChatListCopyWithImpl<$Res>;
  @override
  $Res call({Message message, DateTime? dateTime});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$FreezedChatListCopyWithImpl<$Res>
    extends _$FreezedChatListCopyWithImpl<$Res>
    implements _$FreezedChatListCopyWith<$Res> {
  __$FreezedChatListCopyWithImpl(
      _FreezedChatList _value, $Res Function(_FreezedChatList) _then)
      : super(_value, (v) => _then(v as _FreezedChatList));

  @override
  _FreezedChatList get _value => super._value as _FreezedChatList;

  @override
  $Res call({
    Object? message = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_FreezedChatList(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_FreezedChatList implements _FreezedChatList {
  const _$_FreezedChatList({required this.message, this.dateTime});

  @override
  final Message message;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'FreezedChatList(message: $message, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreezedChatList &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, dateTime);

  @JsonKey(ignore: true)
  @override
  _$FreezedChatListCopyWith<_FreezedChatList> get copyWith =>
      __$FreezedChatListCopyWithImpl<_FreezedChatList>(this, _$identity);
}

abstract class _FreezedChatList implements FreezedChatList {
  const factory _FreezedChatList(
      {required Message message, DateTime? dateTime}) = _$_FreezedChatList;

  @override
  Message get message;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$FreezedChatListCopyWith<_FreezedChatList> get copyWith =>
      throw _privateConstructorUsedError;
}
