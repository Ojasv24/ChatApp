import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatBloc, GroupChatState>(
      builder: (context, state) {
        return TextField(
          cursorWidth: 3,
          cursorRadius: const Radius.circular(12),
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            hintText: "Add people...",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          onChanged: (searchWord) {
            context.read<GroupChatBloc>().searchWordChanged(searchWord);
            context.read<GroupChatBloc>().watchAllStarted();
          },
        );
      },
    );
  }
}
