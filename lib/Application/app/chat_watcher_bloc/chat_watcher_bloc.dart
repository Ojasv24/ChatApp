import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/chat_failures.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:chatapp_dda/Application/app/chat_watcher_bloc/chat_watcher_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatWatcherBloc extends Cubit<ChatWatcherState> {
  final IChatRepository _chatRepository;

  ChatWatcherBloc(this._chatRepository)
      : super(const ChatWatcherState.initial());

  Future<void> watchAllStarted() async {
    emit(const ChatWatcherState.loadInProgress());

    _chatRepository.watchAllChat().listen((failureOrChats) {
      chatRecevied(failureOrChats);
    });
  }

  void chatRecevied(Either<ChatFailure, List<Chat>> failureOrChats) {
    emit(
      failureOrChats.fold(
        (f) => ChatWatcherState.loadFailure(f),
        (chats) => ChatWatcherState.loadSuccess(chats),
      ),
    );
  }
}
