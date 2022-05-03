import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Presentation/chats/chat_list/chat_list_page.dart';
import 'package:chatapp_dda/Presentation/chats/chat_page/chat_page.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/make_group_page.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/select_user_group_page.dart';
import 'package:chatapp_dda/Presentation/chats/group_chat/new_message_page.dart';
import 'package:chatapp_dda/Presentation/chats/search_page/search_page.dart';
import 'package:chatapp_dda/Presentation/core/test_provider.dart';
import 'package:chatapp_dda/Presentation/sign_in/sign_in_page.dart';
import 'package:chatapp_dda/Presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: ChatListPage),
    MaterialRoute(page: TestPageProvidet),
    MaterialRoute(page: SearchPage),
    MaterialRoute(page: ChatPage),
    MaterialRoute(page: NewMessagePage),
    MaterialRoute(page: NewGroupPage),
    MaterialRoute(page: MakeGroupPage),
   
  ],
)
class $AppRouter {}
