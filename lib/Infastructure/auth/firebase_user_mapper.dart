import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatapp_dda/Domain/Auth/user.dart';

extension FirebaseUserDomainX on User {
  MyUser toDomain() {
    return MyUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
