// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_watcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserWatcherStateTearOff {
  const _$UserWatcherStateTearOff();

  _UserWatcherState call(
      {required String searchWord,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isLoading,
      required Option<Either<UserFailure, List<UserProfile>>>
          userFailureOrSuccessOption}) {
    return _UserWatcherState(
      searchWord: searchWord,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      isLoading: isLoading,
      userFailureOrSuccessOption: userFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UserWatcherState = _$UserWatcherStateTearOff();

/// @nodoc
mixin _$UserWatcherState {
  String get searchWord => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<UserFailure, List<UserProfile>>>
      get userFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserWatcherStateCopyWith<UserWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWatcherStateCopyWith<$Res> {
  factory $UserWatcherStateCopyWith(
          UserWatcherState value, $Res Function(UserWatcherState) then) =
      _$UserWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {String searchWord,
      bool showErrorMessages,
      bool isSubmitting,
      bool isLoading,
      Option<Either<UserFailure, List<UserProfile>>>
          userFailureOrSuccessOption});
}

/// @nodoc
class _$UserWatcherStateCopyWithImpl<$Res>
    implements $UserWatcherStateCopyWith<$Res> {
  _$UserWatcherStateCopyWithImpl(this._value, this._then);

  final UserWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserWatcherState) _then;

  @override
  $Res call({
    Object? searchWord = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      searchWord: searchWord == freezed
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, List<UserProfile>>>,
    ));
  }
}

/// @nodoc
abstract class _$UserWatcherStateCopyWith<$Res>
    implements $UserWatcherStateCopyWith<$Res> {
  factory _$UserWatcherStateCopyWith(
          _UserWatcherState value, $Res Function(_UserWatcherState) then) =
      __$UserWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String searchWord,
      bool showErrorMessages,
      bool isSubmitting,
      bool isLoading,
      Option<Either<UserFailure, List<UserProfile>>>
          userFailureOrSuccessOption});
}

/// @nodoc
class __$UserWatcherStateCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$UserWatcherStateCopyWith<$Res> {
  __$UserWatcherStateCopyWithImpl(
      _UserWatcherState _value, $Res Function(_UserWatcherState) _then)
      : super(_value, (v) => _then(v as _UserWatcherState));

  @override
  _UserWatcherState get _value => super._value as _UserWatcherState;

  @override
  $Res call({
    Object? searchWord = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserWatcherState(
      searchWord: searchWord == freezed
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, List<UserProfile>>>,
    ));
  }
}

/// @nodoc

class _$_UserWatcherState implements _UserWatcherState {
  const _$_UserWatcherState(
      {required this.searchWord,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.isLoading,
      required this.userFailureOrSuccessOption});

  @override
  final String searchWord;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final Option<Either<UserFailure, List<UserProfile>>>
      userFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserWatcherState(searchWord: $searchWord, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isLoading: $isLoading, userFailureOrSuccessOption: $userFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserWatcherState &&
            (identical(other.searchWord, searchWord) ||
                other.searchWord == searchWord) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userFailureOrSuccessOption,
                    userFailureOrSuccessOption) ||
                other.userFailureOrSuccessOption ==
                    userFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchWord, showErrorMessages,
      isSubmitting, isLoading, userFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserWatcherStateCopyWith<_UserWatcherState> get copyWith =>
      __$UserWatcherStateCopyWithImpl<_UserWatcherState>(this, _$identity);
}

abstract class _UserWatcherState implements UserWatcherState {
  const factory _UserWatcherState(
      {required String searchWord,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isLoading,
      required Option<Either<UserFailure, List<UserProfile>>>
          userFailureOrSuccessOption}) = _$_UserWatcherState;

  @override
  String get searchWord;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  Option<Either<UserFailure, List<UserProfile>>> get userFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UserWatcherStateCopyWith<_UserWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
