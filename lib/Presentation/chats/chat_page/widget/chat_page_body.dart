import 'package:chatapp_dda/Application/app/chat_bloc/chat_bloc.dart';
import 'package:chatapp_dda/Application/app/chat_bloc/chat_sate.dart';
import 'package:chatapp_dda/Application/app/input_bloc/input_bloc.dart';
import 'package:chatapp_dda/Application/app/input_bloc/input_states.dart';
import 'package:chatapp_dda/Application/app/message_watcher_bloc/message_watcher_bloc.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:chatapp_dda/Presentation/chats/core/chat_page_title.dart';
import 'package:chatapp_dda/Presentation/chats/core/user_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import 'chat_page_message_watcher.dart';
import 'emoji_keyborad.dart';
import 'message_input.dart';

class ChatBody extends StatelessWidget {
  ChatBody({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            titleSpacing: 0,
            title: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: UserIcon(
                          chat: state.chat,
                          size: 40,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chatTitle(state.chat)),
                          const SizedBox(
                            height: 2,
                          ),
                          state.chat.isGroupChat
                              ? Text(
                                  '${state.chat.usersMap.length.toString()} members',
                                  style: const TextStyle(fontSize: 12),
                                )
                              : Container(),
                        ],
                      ),],),
            actions: [
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return {'Delete chat'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();},),],),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => MessageWatcherBloc(
                        getIt<IChatRepository>(),
                        state.chat,
                      )..watchAllStarted(),
                    ),
                    BlocProvider(
                      create: (context) => getIt<InputBloc>(),
                    ),
                  ],
                  child: BlocBuilder<InputBloc, InputState>(
                      builder: (context, state) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              ShaderMask(
                                child: Image.asset(
                                  'assets/chatBG1.png',
                                  repeat: ImageRepeat.repeat,
                                  alignment: Alignment.topLeft,
                                  scale: 4.3,
                                  fit: BoxFit.none,
                                ),
                                shaderCallback: (bounds) {
                                  return LinearGradient(
                                    colors: [
                                      Colors.orange.shade200.withOpacity(0.3),
                                      Colors.purple.shade600.withOpacity(0.37)
                                    ],
                                    stops: const [0.0, 0.7],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds);
                                },
                                blendMode: BlendMode.srcATop,
                              ),
                              const ChatMessageWatcherPage(),
                            ],
                          ),
                        ),
                        MessageInput(
                          controller: controller,
                        ),
                        state.showEmojiKeyborad
                            ? Expanded(
                                child: EmojiKeyborad(
                                controller: controller,
                              ))
                            : const SizedBox(),],);}),),);},);}}
