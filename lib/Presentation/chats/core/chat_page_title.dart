import 'package:chatapp_dda/Domain/app/chat.dart';

String chatTitle(Chat chat) {
  for (var values in chat.usersMap.values) {
    if (chat.isGroupChat) {
      return chat.chatName!;
    } else if (!values.isMe) {
      return values.realName;
    }
  }
  return '';
}
