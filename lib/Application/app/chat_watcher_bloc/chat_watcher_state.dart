import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/chat_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_watcher_state.freezed.dart';

@freezed
class ChatWatcherState with _$ChatWatcherState {
  const factory ChatWatcherState.initial() = _Initial;
  const factory ChatWatcherState.loadInProgress() = _LoadInProgress;
  const factory ChatWatcherState.loadSuccess(List<Chat> chats) = _LoadSuccess;
  const factory ChatWatcherState.loadFailure(ChatFailure chatFailure) =
      _LoadFailure;
}
