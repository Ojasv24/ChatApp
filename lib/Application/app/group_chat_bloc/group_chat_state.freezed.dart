// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupChatStateTearOff {
  const _$GroupChatStateTearOff();

  _GroupChatState call(
      {required Chat chat,
      required List<UserProfile> selectedUserProfile,
      required String searchWord,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isLoading,
      required Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
          userFailureOrSuccessOption}) {
    return _GroupChatState(
      chat: chat,
      selectedUserProfile: selectedUserProfile,
      searchWord: searchWord,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      isLoading: isLoading,
      userFailureOrSuccessOption: userFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $GroupChatState = _$GroupChatStateTearOff();

/// @nodoc
mixin _$GroupChatState {
  Chat get chat => throw _privateConstructorUsedError;
  List<UserProfile> get selectedUserProfile =>
      throw _privateConstructorUsedError;
  String get searchWord => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
      get userFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupChatStateCopyWith<GroupChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatStateCopyWith<$Res> {
  factory $GroupChatStateCopyWith(
          GroupChatState value, $Res Function(GroupChatState) then) =
      _$GroupChatStateCopyWithImpl<$Res>;
  $Res call(
      {Chat chat,
      List<UserProfile> selectedUserProfile,
      String searchWord,
      bool showErrorMessages,
      bool isSubmitting,
      bool isLoading,
      Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
          userFailureOrSuccessOption});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$GroupChatStateCopyWithImpl<$Res>
    implements $GroupChatStateCopyWith<$Res> {
  _$GroupChatStateCopyWithImpl(this._value, this._then);

  final GroupChatState _value;
  // ignore: unused_field
  final $Res Function(GroupChatState) _then;

  @override
  $Res call({
    Object? chat = freezed,
    Object? selectedUserProfile = freezed,
    Object? searchWord = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      selectedUserProfile: selectedUserProfile == freezed
          ? _value.selectedUserProfile
          : selectedUserProfile // ignore: cast_nullable_to_non_nullable
              as List<UserProfile>,
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
              as Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc
abstract class _$GroupChatStateCopyWith<$Res>
    implements $GroupChatStateCopyWith<$Res> {
  factory _$GroupChatStateCopyWith(
          _GroupChatState value, $Res Function(_GroupChatState) then) =
      __$GroupChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Chat chat,
      List<UserProfile> selectedUserProfile,
      String searchWord,
      bool showErrorMessages,
      bool isSubmitting,
      bool isLoading,
      Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
          userFailureOrSuccessOption});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$GroupChatStateCopyWithImpl<$Res>
    extends _$GroupChatStateCopyWithImpl<$Res>
    implements _$GroupChatStateCopyWith<$Res> {
  __$GroupChatStateCopyWithImpl(
      _GroupChatState _value, $Res Function(_GroupChatState) _then)
      : super(_value, (v) => _then(v as _GroupChatState));

  @override
  _GroupChatState get _value => super._value as _GroupChatState;

  @override
  $Res call({
    Object? chat = freezed,
    Object? selectedUserProfile = freezed,
    Object? searchWord = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_GroupChatState(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      selectedUserProfile: selectedUserProfile == freezed
          ? _value.selectedUserProfile
          : selectedUserProfile // ignore: cast_nullable_to_non_nullable
              as List<UserProfile>,
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
              as Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>,
    ));
  }
}

/// @nodoc

class _$_GroupChatState implements _GroupChatState {
  const _$_GroupChatState(
      {required this.chat,
      required this.selectedUserProfile,
      required this.searchWord,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.isLoading,
      required this.userFailureOrSuccessOption});

  @override
  final Chat chat;
  @override
  final List<UserProfile> selectedUserProfile;
  @override
  final String searchWord;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
      userFailureOrSuccessOption;

  @override
  String toString() {
    return 'GroupChatState(chat: $chat, selectedUserProfile: $selectedUserProfile, searchWord: $searchWord, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isLoading: $isLoading, userFailureOrSuccessOption: $userFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupChatState &&
            (identical(other.chat, chat) || other.chat == chat) &&
            const DeepCollectionEquality()
                .equals(other.selectedUserProfile, selectedUserProfile) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      chat,
      const DeepCollectionEquality().hash(selectedUserProfile),
      searchWord,
      showErrorMessages,
      isSubmitting,
      isLoading,
      userFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$GroupChatStateCopyWith<_GroupChatState> get copyWith =>
      __$GroupChatStateCopyWithImpl<_GroupChatState>(this, _$identity);
}

abstract class _GroupChatState implements GroupChatState {
  const factory _GroupChatState(
      {required Chat chat,
      required List<UserProfile> selectedUserProfile,
      required String searchWord,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isLoading,
      required Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
          userFailureOrSuccessOption}) = _$_GroupChatState;

  @override
  Chat get chat;
  @override
  List<UserProfile> get selectedUserProfile;
  @override
  String get searchWord;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
      get userFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$GroupChatStateCopyWith<_GroupChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
