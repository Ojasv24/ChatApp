import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/chat_failures.dart';
import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_watcher_state.freezed.dart';

@freezed
class MessageWatcherState with _$MessageWatcherState {
  const factory MessageWatcherState.initial() = _Initial;
  const factory MessageWatcherState.loadInProgress() = _LoadInProgress;
  const factory MessageWatcherState.loadSuccess(
      List<Message> messages, Chat chat) = _LoadSuccess;
  const factory MessageWatcherState.loadFailure(ChatFailure chatFailure) =
      _LoadFailure;
}
