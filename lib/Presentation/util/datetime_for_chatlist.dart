import 'package:intl/intl.dart';

String dateTimeForChatList(DateTime time) {
  return DateTime.now().difference(time).inDays > 7
      ? DateFormat.MMMd().format(time)
      : DateTime.now().difference(time).inDays == 0
          ? DateFormat('hh:mm a').format(time)
          : DateFormat.E().format(time);
}
