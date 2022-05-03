import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:chatapp_dda/Presentation/chats/core/user_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserWatchList extends StatelessWidget {
  const UserWatchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatBloc, GroupChatState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : state.userFailureOrSuccessOption.fold(
                () => Container(),
                (a) => a.fold(
                  (faliure) => Text(faliure.toString()),
                  (users) => ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index].value1;
                      if (user.isMe) {
                        return Container();
                      }
                      return Column(
                        children: [
                          ListTile(
                            horizontalTitleGap: 0,
                            title: Text(
                              user.realName,
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            leading: UserIcon(
                              size: 34,
                              userProfile: user,
                            ),
                            onTap: () {
                              context
                                  .read<GroupChatBloc>()
                                  .addUserToList(users[index]);
                            },
                            selected: users[index].value2,
                          ),
                          const Divider(
                            indent: 60,
                            color: Colors.black,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              );
      },
    );
  }
}
