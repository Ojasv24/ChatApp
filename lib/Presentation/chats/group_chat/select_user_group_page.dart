import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/widget/floatin_action_button.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/widget/selected_user_widget.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/widget/user_watcher_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../injection.dart';

class NewGroupPage extends StatelessWidget {
  const NewGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GroupChatBloc>(),
      child:
          BlocBuilder<GroupChatBloc, GroupChatState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                 Text('New Group'),
                SizedBox(
                  height: 4,
                ),
                 Text(
                  'up to 200000 members',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54),
                )
              ],
            ),
          ),
          body: Column(
            children: const [
              SelectedUserWidget(),
              Expanded(child: UserWatchList()),
            ],
          ),
          floatingActionButton: state.selectedUserProfile.isEmpty
              ? null
              : const MyFloatingActionButton(),
        );
      }),
    );
  }
}
