import 'package:bloc/bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:chatapp_dda/Domain/user/i_user_repository.dart';
import 'package:chatapp_dda/Domain/user/user_failures.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GroupChatBloc extends Cubit<GroupChatState> {
  final IUserRepository _userRepository;
  final IChatRepository chatRepository;
  GroupChatBloc(this._userRepository, this.chatRepository)
      : super(GroupChatState.initial());

  void searchWordChanged(String searchWord) {
    emit(
      state.copyWith(
        searchWord: searchWord,
        isSubmitting: true,
        showErrorMessages: false,
        isLoading: true,
      ),
    );
  }

  Future<void> watchAllStarted() async {
    _userRepository.searchUser(state.searchWord).then(
          (failureOrUser) =>
              userRecevied(failureOrUser.map((profiles) => profiles
                  .map((profile) => Tuple2<UserProfile, bool>(
                        profile,
                        state.selectedUserProfile.indexWhere(
                              (element) => element.id == profile.id,
                            ) !=
                            -1,
                      ))
                  .toList())),
        );
  }

  void addUserToList(Tuple2<UserProfile, bool> userProfile) {
    final newList = userProfile.value2
        ? [
            ...state.selectedUserProfile
              ..removeWhere((element) => userProfile.value1.id == element.id)
          ]
        : [...state.selectedUserProfile, userProfile.value1];
    emit(
      state.copyWith(
          selectedUserProfile: newList,
          userFailureOrSuccessOption: state.userFailureOrSuccessOption
              .map((option) => option.map((success) => success
                  .map((profile) => Tuple2<UserProfile, bool>(
                        profile.value1,
                        newList.indexWhere(
                              (element) => element.id == profile.value1.id,
                            ) !=
                            -1,
                      ))
                  .toList()))),
    );
  }

  void userRecevied(
      Either<UserFailure, List<Tuple2<UserProfile, bool>>> failureOrUsers) {
    emit(
      state.copyWith(
        showErrorMessages: true,
        isLoading: false,
        isSubmitting: false,
        userFailureOrSuccessOption: optionOf(failureOrUsers),
      ),
    );
  }

  void submitted() {
    emit(state.copyWith(isSubmitting: true));
  }

  Future<Chat> createChat(
      String chatName, List<UserProfile> selectedUsers) async {
    emit(
      state.copyWith(isLoading: true),
    );
    emit(state.copyWith.chat(
      chatName: chatName,
      isGroupChat: true,
      groupChatPhoto: 'https://avatars.dicebear.com/api/gridy/$chatName.svg',
      exists: true,
      usersMap: Map.fromEntries(
        selectedUsers.map(
          (user) => MapEntry(user.id.getOrCrash(), user),
        ),
      ),
    ));
    final chat = await chatRepository.createGroupChat(state.chat);
    chat.fold((l) {
      return Chat.empty();
    }, (r) {
      emit(
        state.copyWith(isLoading: false, chat: r),
      );
      return r;
    });
    return state.chat;
  }
}
