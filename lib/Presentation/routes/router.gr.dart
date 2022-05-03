// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../Application/app/group_chat_bloc/group_chat_bloc.dart' as _i14;
import '../../Domain/app/chat.dart' as _i13;
import '../../Domain/user/user_profile.dart' as _i12;
import '../chats/chat_list/chat_list_page.dart' as _i3;
import '../chats/chat_page/chat_page.dart' as _i6;
import '../chats/group_chat/make_group_page.dart' as _i9;
import '../chats/group_chat/new_message_page.dart' as _i7;
import '../chats/group_chat/select_user_group_page.dart' as _i8;
import '../chats/search_page/search_page.dart' as _i5;
import '../core/test_provider.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    ChatListPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ChatListPage());
    },
    TestPageProvidetRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.TestPageProvidet());
    },
    SearchPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SearchPage());
    },
    ChatPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChatPageRouteArgs>(
          orElse: () => const ChatPageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ChatPage(
              key: args.key, userProfile: args.userProfile, chat: args.chat));
    },
    NewMessagePageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.NewMessagePage());
    },
    NewGroupPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.NewGroupPage());
    },
    MakeGroupPageRoute.name: (routeData) {
      final args = routeData.argsAs<MakeGroupPageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.MakeGroupPage(
              key: args.key, groupChatBloc: args.groupChatBloc));
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashPageRoute.name, path: '/'),
        _i10.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i10.RouteConfig(ChatListPageRoute.name, path: '/chat-list-page'),
        _i10.RouteConfig(TestPageProvidetRoute.name,
            path: '/test-page-providet'),
        _i10.RouteConfig(SearchPageRoute.name, path: '/search-page'),
        _i10.RouteConfig(ChatPageRoute.name, path: '/chat-page'),
        _i10.RouteConfig(NewMessagePageRoute.name, path: '/new-message-page'),
        _i10.RouteConfig(NewGroupPageRoute.name, path: '/new-group-page'),
        _i10.RouteConfig(MakeGroupPageRoute.name, path: '/make-group-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i10.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.SignInPage]
class SignInPageRoute extends _i10.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i3.ChatListPage]
class ChatListPageRoute extends _i10.PageRouteInfo<void> {
  const ChatListPageRoute() : super(name, path: '/chat-list-page');

  static const String name = 'ChatListPageRoute';
}

/// generated route for [_i4.TestPageProvidet]
class TestPageProvidetRoute extends _i10.PageRouteInfo<void> {
  const TestPageProvidetRoute() : super(name, path: '/test-page-providet');

  static const String name = 'TestPageProvidetRoute';
}

/// generated route for [_i5.SearchPage]
class SearchPageRoute extends _i10.PageRouteInfo<void> {
  const SearchPageRoute() : super(name, path: '/search-page');

  static const String name = 'SearchPageRoute';
}

/// generated route for [_i6.ChatPage]
class ChatPageRoute extends _i10.PageRouteInfo<ChatPageRouteArgs> {
  ChatPageRoute({_i11.Key? key, _i12.UserProfile? userProfile, _i13.Chat? chat})
      : super(name,
            path: '/chat-page',
            args: ChatPageRouteArgs(
                key: key, userProfile: userProfile, chat: chat));

  static const String name = 'ChatPageRoute';
}

class ChatPageRouteArgs {
  const ChatPageRouteArgs({this.key, this.userProfile, this.chat});

  final _i11.Key? key;

  final _i12.UserProfile? userProfile;

  final _i13.Chat? chat;

  @override
  String toString() {
    return 'ChatPageRouteArgs{key: $key, userProfile: $userProfile, chat: $chat}';
  }
}

/// generated route for [_i7.NewMessagePage]
class NewMessagePageRoute extends _i10.PageRouteInfo<void> {
  const NewMessagePageRoute() : super(name, path: '/new-message-page');

  static const String name = 'NewMessagePageRoute';
}

/// generated route for [_i8.NewGroupPage]
class NewGroupPageRoute extends _i10.PageRouteInfo<void> {
  const NewGroupPageRoute() : super(name, path: '/new-group-page');

  static const String name = 'NewGroupPageRoute';
}

/// generated route for [_i9.MakeGroupPage]
class MakeGroupPageRoute extends _i10.PageRouteInfo<MakeGroupPageRouteArgs> {
  MakeGroupPageRoute({_i11.Key? key, required _i14.GroupChatBloc groupChatBloc})
      : super(name,
            path: '/make-group-page',
            args:
                MakeGroupPageRouteArgs(key: key, groupChatBloc: groupChatBloc));

  static const String name = 'MakeGroupPageRoute';
}

class MakeGroupPageRouteArgs {
  const MakeGroupPageRouteArgs({this.key, required this.groupChatBloc});

  final _i11.Key? key;

  final _i14.GroupChatBloc groupChatBloc;

  @override
  String toString() {
    return 'MakeGroupPageRouteArgs{key: $key, groupChatBloc: $groupChatBloc}';
  }
}
