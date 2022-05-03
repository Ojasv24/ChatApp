// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputStateTearOff {
  const _$InputStateTearOff();

  _InputState call(
      {required bool showEmojiKeyborad,
      required bool showSendButton,
      required String message}) {
    return _InputState(
      showEmojiKeyborad: showEmojiKeyborad,
      showSendButton: showSendButton,
      message: message,
    );
  }
}

/// @nodoc
const $InputState = _$InputStateTearOff();

/// @nodoc
mixin _$InputState {
  bool get showEmojiKeyborad => throw _privateConstructorUsedError;
  bool get showSendButton => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputStateCopyWith<InputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStateCopyWith<$Res> {
  factory $InputStateCopyWith(
          InputState value, $Res Function(InputState) then) =
      _$InputStateCopyWithImpl<$Res>;
  $Res call({bool showEmojiKeyborad, bool showSendButton, String message});
}

/// @nodoc
class _$InputStateCopyWithImpl<$Res> implements $InputStateCopyWith<$Res> {
  _$InputStateCopyWithImpl(this._value, this._then);

  final InputState _value;
  // ignore: unused_field
  final $Res Function(InputState) _then;

  @override
  $Res call({
    Object? showEmojiKeyborad = freezed,
    Object? showSendButton = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      showEmojiKeyborad: showEmojiKeyborad == freezed
          ? _value.showEmojiKeyborad
          : showEmojiKeyborad // ignore: cast_nullable_to_non_nullable
              as bool,
      showSendButton: showSendButton == freezed
          ? _value.showSendButton
          : showSendButton // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InputStateCopyWith<$Res> implements $InputStateCopyWith<$Res> {
  factory _$InputStateCopyWith(
          _InputState value, $Res Function(_InputState) then) =
      __$InputStateCopyWithImpl<$Res>;
  @override
  $Res call({bool showEmojiKeyborad, bool showSendButton, String message});
}

/// @nodoc
class __$InputStateCopyWithImpl<$Res> extends _$InputStateCopyWithImpl<$Res>
    implements _$InputStateCopyWith<$Res> {
  __$InputStateCopyWithImpl(
      _InputState _value, $Res Function(_InputState) _then)
      : super(_value, (v) => _then(v as _InputState));

  @override
  _InputState get _value => super._value as _InputState;

  @override
  $Res call({
    Object? showEmojiKeyborad = freezed,
    Object? showSendButton = freezed,
    Object? message = freezed,
  }) {
    return _then(_InputState(
      showEmojiKeyborad: showEmojiKeyborad == freezed
          ? _value.showEmojiKeyborad
          : showEmojiKeyborad // ignore: cast_nullable_to_non_nullable
              as bool,
      showSendButton: showSendButton == freezed
          ? _value.showSendButton
          : showSendButton // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputState implements _InputState {
  const _$_InputState(
      {required this.showEmojiKeyborad,
      required this.showSendButton,
      required this.message});

  @override
  final bool showEmojiKeyborad;
  @override
  final bool showSendButton;
  @override
  final String message;

  @override
  String toString() {
    return 'InputState(showEmojiKeyborad: $showEmojiKeyborad, showSendButton: $showSendButton, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InputState &&
            (identical(other.showEmojiKeyborad, showEmojiKeyborad) ||
                other.showEmojiKeyborad == showEmojiKeyborad) &&
            (identical(other.showSendButton, showSendButton) ||
                other.showSendButton == showSendButton) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showEmojiKeyborad, showSendButton, message);

  @JsonKey(ignore: true)
  @override
  _$InputStateCopyWith<_InputState> get copyWith =>
      __$InputStateCopyWithImpl<_InputState>(this, _$identity);
}

abstract class _InputState implements InputState {
  const factory _InputState(
      {required bool showEmojiKeyborad,
      required bool showSendButton,
      required String message}) = _$_InputState;

  @override
  bool get showEmojiKeyborad;
  @override
  bool get showSendButton;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$InputStateCopyWith<_InputState> get copyWith =>
      throw _privateConstructorUsedError;
}
