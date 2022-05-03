import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:chatapp_dda/Application/app/user_watcher_bloc/user_watcher_state.dart';
import 'package:chatapp_dda/Domain/user/i_user_repository.dart';
import 'package:chatapp_dda/Domain/user/user_failures.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserWatcherBloc extends Cubit<UserWatcherState> {
  final IUserRepository _userRepository;

  UserWatcherBloc(this._userRepository) : super(UserWatcherState.initial());

  void searchWordChanged(String searchWord) {
    emit(
      state.copyWith(
        searchWord: searchWord,
        isSubmitting: true,
        showErrorMessages: false,
        isLoading: true   ,
      ),
    );
  }

  Future<void> watchAllStarted() async {
    _userRepository.searchUser(state.searchWord).then(
          (failureOrUser) => userRecevied(failureOrUser),
        );
  }

  void userRecevied(Either<UserFailure, List<UserProfile>> failureOrUsers) {
    emit(
      state.copyWith(
        showErrorMessages: true,
        isLoading: false,
        isSubmitting: false,
        userFailureOrSuccessOption: optionOf(failureOrUsers),
      ),
    );
  }
}
