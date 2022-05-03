import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatBloc, GroupChatState>(
      builder: (context, state) {
        return FloatingActionButton(
          child: const Icon(
            Icons.arrow_right_alt_rounded,
            size: 34,
          ),
          onPressed: () {
            context.router.push(
              MakeGroupPageRoute(
                groupChatBloc: context.read<GroupChatBloc>(),
              ),
            );
          },
        );
      },
    );
  }
}
