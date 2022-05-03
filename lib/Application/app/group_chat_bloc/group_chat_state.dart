import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/user/user_failures.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_chat_state.freezed.dart';

@freezed
class GroupChatState with _$GroupChatState {
  const factory GroupChatState({
    required Chat chat,
    required List<UserProfile> selectedUserProfile,
    required String searchWord,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isLoading,
    required Option<Either<UserFailure, List<Tuple2<UserProfile, bool>>>>
        userFailureOrSuccessOption,
  }) = _GroupChatState;

  factory GroupChatState.initial() => GroupChatState(
        chat: Chat.empty(),
        selectedUserProfile: [],
        searchWord: '',
        userFailureOrSuccessOption: none(),
        isLoading: false,
        isSubmitting: false,
        showErrorMessages: false,
      );
}
