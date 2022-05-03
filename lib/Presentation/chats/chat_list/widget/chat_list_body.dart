
import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Application/app/chat_watcher_bloc/chat_watcher_bloc.dart';
import 'package:chatapp_dda/Application/app/chat_watcher_bloc/chat_watcher_state.dart';
import 'package:chatapp_dda/Presentation/chats/core/chat_page_title.dart';
import 'package:chatapp_dda/Presentation/chats/core/user_icon.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:chatapp_dda/Presentation/util/datetime_for_chatlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ChatListBody extends StatelessWidget {
  const ChatListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatWatcherBloc, ChatWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.chats.length,
              itemBuilder: (context, index) {
                final chat = state.chats[index];

                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        chatTitle(chat),
                        style: const TextStyle(fontSize: 20),
                      ),
                      leading: UserIcon(
                        chat: chat,
                        size: 48,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          chat.lastMessage.message,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // trailing: Text(DateFormat('h:mm a')
                      //     .format(chat.lastMessage.timeStamp),),
                      trailing: Text(
                        dateTimeForChatList(chat.lastMessage.timeStamp),
                        style: const TextStyle(color: Colors.white54),
                      ),
                      onTap: () {
                        context.router.push(ChatPageRoute(
                          chat: chat,
                          userProfile: null,
                        ));
                      },
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
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
}
