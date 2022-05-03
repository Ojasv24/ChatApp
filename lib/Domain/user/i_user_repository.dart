import 'package:chatapp_dda/Domain/user/user_failures.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, List<UserProfile>>> searchUser(String searchWord);
  Future<Either<UserFailure, Unit>> setUser(UserProfile userProfile);
  Future<Either<UserFailure, UserProfile>> getUser(String userId);
  Future<Either<UserFailure, UserProfile>> getMyProfile();
}
