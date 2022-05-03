import 'package:chatapp_dda/Application/app/user_watcher_bloc/user_watcher_bloc.dart';
import 'package:chatapp_dda/Application/app/user_watcher_bloc/user_watcher_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPageAppBar extends StatelessWidget {
  const SearchPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserWatcherBloc, UserWatcherState>(
      builder: (context, state) {
        return TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: "Search User...",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
          cursorColor: Colors.white,
          onChanged: (searchWord) {
            context.read<UserWatcherBloc>().searchWordChanged(searchWord);
            context.read<UserWatcherBloc>().watchAllStarted();
          },
        );
      },
    );
  }
}
