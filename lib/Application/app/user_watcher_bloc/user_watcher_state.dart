import 'package:chatapp_dda/Domain/user/user_failures.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_watcher_state.freezed.dart';

@freezed
class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState({
    required String searchWord,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isLoading,
    required Option<Either<UserFailure, List<UserProfile>>>
        userFailureOrSuccessOption,
  }) = _UserWatcherState;

  factory UserWatcherState.initial() => UserWatcherState(
        searchWord: '',
        showErrorMessages: false,
        isSubmitting: false,
        isLoading: false,
        userFailureOrSuccessOption: none(),
      );
}
