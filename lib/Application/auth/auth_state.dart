import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(UserProfile userProfile) =
      Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
