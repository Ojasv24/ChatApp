import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'chat_sate.dart';

@injectable
class ChatBloc extends Cubit<ChatState> {
  final IChatRepository chatRepository;
  final UserProfile? userProfile;
  ChatBloc({
    required this.chatRepository,
    Chat? chat,
    this.userProfile,
  })  : assert(chat == null && userProfile != null ||
            chat != null && userProfile == null),
        super(ChatState.initial()) {
    if (chat == null) {
      fetchChat();
    } else {
      emit(state.copyWith(chat: chat));
    }
  }

  Future<void> fetchChat() async {
    emit(state.copyWith(isLoading: true));
    final maybeChat = await chatRepository.openChatWithUserId(userProfile!);
    if (maybeChat.isRight()) {
      final chat = maybeChat.getOrElse(() => throw Error());
      emit(state.copyWith(isLoading: false, chat: chat));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }

  void messageChanged(String message) {
    emit(state.copyWith(
      message: state.message.copyWith(message: message),
    ));
  }

  void sendMessage() {
    if (!state.chat.exists) {
      chatRepository.createChat(state.chat);
      emit(state.copyWith.chat(exists: true));
    }
    chatRepository.sendMessage(state.message, state.chat);
  }

  void deleteMessage() {
    chatRepository.delete(state.message, state.chat);
  }
}
