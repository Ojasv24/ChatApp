import 'package:chatapp_dda/Application/app/chat_bloc/chat_bloc.dart';
import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/app/i_chat_repository.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:chatapp_dda/Presentation/chats/chat_page/widget/chat_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class ChatPage extends StatelessWidget {
  final UserProfile? userProfile;
  final Chat? chat;
  const ChatPage({Key? key, this.userProfile, this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(
          chatRepository: getIt<IChatRepository>(),
          chat: chat,
          userProfile: userProfile),
      child: ChatBody(),
    );
  }
}
