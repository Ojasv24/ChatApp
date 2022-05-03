import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required String id,
    required String message,
    required UserProfile userProfile,
    required bool isByMe,
    required DateTime timeStamp,
  }) = _Message;

  factory Message.empty() => Message(
        id: '',
        message: '',
        userProfile: UserProfile.empty(),
        isByMe: true,
        timeStamp: DateTime.now(),
      );
}
