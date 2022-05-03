import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Application/app/user_watcher_bloc/user_watcher_bloc.dart';
import 'package:chatapp_dda/Application/app/user_watcher_bloc/user_watcher_state.dart';
import 'package:chatapp_dda/Presentation/chats/core/user_icon.dart';
import 'package:chatapp_dda/Presentation/chats/search_page/widgets/search_appbar.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:chatapp_dda/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserWatcherBloc>(),
      child: BlocBuilder<UserWatcherBloc, UserWatcherState>(
          builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const SearchPageAppBar(),
          ),
          body: state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : state.userFailureOrSuccessOption.fold(
                  () => null,
                  (a) => a.fold(
                    (l) => Text(l.toString()),
                    (users) => ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        if (user.isMe) {
                          return Container();
                        }
                        return ListTile(
                          title: Text(user.realName),
                          horizontalTitleGap: 0,
                          leading: UserIcon(
                            userProfile: user,
                            size: 32,
                          ),
                          onTap: () {
                            context.router.replace(
                              ChatPageRoute(chat: null, userProfile: user),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
        );
      }),
    );
  }
}
