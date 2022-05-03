import 'package:chatapp_dda/Application/app/message_watcher_bloc/message_watcher_bloc.dart';
import 'package:chatapp_dda/Application/app/message_watcher_bloc/message_watcher_state.dart';
import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:chatapp_dda/Presentation/util/create_freezed_chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'message_widget.dart';

class ChatMessageWatcherPage extends StatelessWidget {
  const ChatMessageWatcherPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageWatcherBloc, MessageWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (state) {
            final newlist = chatListWithDate(state.messages);
            return ListView.builder(
              reverse: true,
              // itemCount: state.messages.length,
              itemCount: newlist.length,
              itemBuilder: (context, index) {
                // final message = state.messages[index];
                final message = newlist[index].message;
                final date = newlist[index].dateTime;
                Message? prevMessage;
                if (index - 1 >= 0) {
                  // prevMessage = state.messages[index - 1];
                  prevMessage = newlist[index - 1].message;
                }

                Message? nextMessage;
                if (index + 1 < newlist.length) {
                  nextMessage = newlist[index + 1].message;
                }

                return Column(
                  children: [
                    date == null
                        ? const SizedBox()
                        : Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                DateFormat.MMMMd().format(date),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.grey.withOpacity(0.24),
                            ),
                          ),
                    MessageWidget(
                      chat: state.chat,
                      message: message,
                      showNotch:
                          (message.userProfile != prevMessage?.userProfile),
                      showUserNameTag:
                          (message.userProfile != nextMessage?.userProfile),
                    ),
                  ],
                );
              },
            );
          },
          loadFailure: (state) {
            return Text(state.chatFailure.toString());
          });
    });
  }

  // List<Tuple2<Message, DateTime>> hello() {}
}
