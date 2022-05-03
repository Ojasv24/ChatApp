import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'message.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required UniqueId id,
    required Map<String, UserProfile> usersMap,
    required bool isGroupChat,
    required Message lastMessage,
    String? chatName,
    String? groupChatPhoto,
    required bool exists,
  }) = _Chat;

  factory Chat.empty() => Chat(
        id: UniqueId(),
        lastMessage: Message.empty(),
        isGroupChat: false,
        usersMap: {},
        chatName: '',
        groupChatPhoto: '',
        exists: false,
      );
}
