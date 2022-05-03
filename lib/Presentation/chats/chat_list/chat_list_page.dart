import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Application/app/chat_watcher_bloc/chat_watcher_bloc.dart';
import 'package:chatapp_dda/Application/app/user_watcher_bloc/user_watcher_bloc.dart';
import 'package:chatapp_dda/Application/auth/auth_bloc.dart';
import 'package:chatapp_dda/Application/auth/auth_state.dart';
import 'package:chatapp_dda/Presentation/chats/chat_list/widget/chat_list_body.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:chatapp_dda/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/drawer_widget.dart';
import 'widget/search_user_button.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatWatcherBloc>(
          create: (context) => getIt<ChatWatcherBloc>()..watchAllStarted(),
        ),
        BlocProvider<UserWatcherBloc>(
          create: (context) => getIt<UserWatcherBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    context.router.replace(const SignInPageRoute()),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Chats'),
            actions: const [
              SearchButton(),
            ],
          ),
          body: const ChatListBody(),
          drawer: const DrawerWidget(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.edit),
            onPressed: () {
              context.router.push(const NewMessagePageRoute());
            },
          ),
        ),
      ),
    );
  }
}
