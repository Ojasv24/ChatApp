import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/chat_failures.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_watcher_state.dart';

@injectable
class MessageWatcherBloc extends Cubit<MessageWatcherState> {
  final IChatRepository _chatRepository;
  final Chat _chat;

  MessageWatcherBloc(this._chatRepository, this._chat)
      : super(const MessageWatcherState.initial());

  Future<void> watchAllStarted() async {
    emit(const MessageWatcherState.loadInProgress());
    _chatRepository.watchAllMesage(_chat).listen((failureOrMessage) {
      messageRecevied(failureOrMessage);
    });
  }

  void messageRecevied(Either<ChatFailure, List<Message>> failureOrChats) {
    emit(
      failureOrChats.fold(
        (f) => MessageWatcherState.loadFailure(f),
        (messages) {
          return MessageWatcherState.loadSuccess(messages,_chat);
        },
      ),
    );
  }
}
