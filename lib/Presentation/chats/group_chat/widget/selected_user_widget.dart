import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:chatapp_dda/Presentation/chats/core/user_icon.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/widget/search_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedUserWidget extends StatelessWidget {
  const SelectedUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatBloc, GroupChatState>(
      builder: (context, state) {
        return Wrap(
          children: [
            ...state.selectedUserProfile.map((user) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        UserIcon(
                          size: 32,
                          userProfile: user,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          user.realName,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: SearchFiled(),
            ),
          ],
        );
      },
    );
  }
}
