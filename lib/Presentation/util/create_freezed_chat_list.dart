import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:chatapp_dda/Presentation/util/freezed_chat_list.dart';

List<FreezedChatList> chatListWithDate(List<Message> messages) {
  List<FreezedChatList> updatedMessageList = [];

  int dateTime = 0;
  for (var message in messages.reversed) {
    if (dateTime != message.timeStamp.day) {
      dateTime = message.timeStamp.day;
      updatedMessageList
          .add(FreezedChatList(message: message, dateTime: message.timeStamp));
    } else {
      updatedMessageList.add(FreezedChatList(message: message));
    }
  }
  return updatedMessageList.reversed.toList();
}
