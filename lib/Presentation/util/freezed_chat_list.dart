import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_chat_list.freezed.dart';

@freezed
class FreezedChatList with _$FreezedChatList {
  const factory FreezedChatList({
    required Message message,
    DateTime? dateTime,
  }) = _FreezedChatList;

  factory FreezedChatList.initial() => FreezedChatList(
        message: Message.empty(),
      );
}
