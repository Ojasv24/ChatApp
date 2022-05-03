import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_bloc.dart';
import 'package:chatapp_dda/Application/app/group_chat_bloc/group_chat_state.dart';
import 'package:chatapp_dda/Presentation/chats/core/user_icon.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeGroupPage extends StatelessWidget {
  final GroupChatBloc groupChatBloc;
  const MakeGroupPage({Key? key, required this.groupChatBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return BlocProvider.value(
      value: groupChatBloc,
      child: BlocBuilder<GroupChatBloc, GroupChatState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('New Group'), ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.groups_rounded,
                          size: 40,
                          color: Colors.white,),
                        radius: 34,
                        backgroundColor: Colors.purple,),),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: " Enter Group Name",
                            border: UnderlineInputBorder(),
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.white),
                            ),
                          controller: myController,
                          style: const TextStyle(fontSize: 20),),),),],),
                const Divider(
                  thickness: 10,),
                const SizedBox(
                  height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '${state.selectedUserProfile.length.toString()} members',
                    style: const TextStyle(fontWeight: FontWeight.bold),),),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.selectedUserProfile.length,
                    itemBuilder: (context, index) {
                      final user = state.selectedUserProfile[index];
                      return ListTile(
                        title: Text(
                          user.realName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500),),
                        horizontalTitleGap: 5,
                        leading: UserIcon(
                          size: 42,
                          userProfile: user,),
                        onTap: () {},);},),)],),
            floatingActionButton: FloatingActionButton(
              child: const Icon(
                Icons.check_rounded,
                size: 28,),
              onPressed: () async {
                if (myController.text.isEmpty) {
                  return;}
                final chat = await context
                    .read<GroupChatBloc>()
                    .createChat(myController.text, state.selectedUserProfile);
                context.router.popUntilRoot();
                context.router.push(
                  ChatPageRoute(chat: chat, userProfile: null),);},),);},),);}}
