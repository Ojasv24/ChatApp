import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'chat.dart';
import 'chat_failures.dart';

abstract class IChatRepository {
  Stream<Either<ChatFailure, List<Chat>>> watchAllChat();
  Stream<Either<ChatFailure, List<Message>>> watchAllMesage(Chat chat);
  // Future<Either<ChatFailure, List<UserProfile>>> searchUser(String searchWord);
  Future<Either<ChatFailure, Unit>> createChat(Chat chat);
  Future<Either<ChatFailure, Chat>> createGroupChat(Chat chat);
  // Adding user to a group chat
  Future<Either<ChatFailure, Unit>> add(Chat chat);
  Future<Either<ChatFailure, Unit>> sendMessage(Message message, Chat chat);
  Future<Either<ChatFailure, Unit>> delete(Message message, Chat chat);
  Future<Either<ChatFailure, Chat>> openChatWithUserId(UserProfile userProfile);
}
