import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_sate.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required Message message,
    required Chat chat,
    required bool isLoading,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
        message: Message.empty(),
        chat: Chat.empty(),
        isLoading: false,
      );
}
