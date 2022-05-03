import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<UserProfile>> getMyProfile();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Name name,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<bool> verifyEmail({required EmailAddress emailAddress});
  Future<void> signOut();
}
