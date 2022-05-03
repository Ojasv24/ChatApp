import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    @Default(true) bool exists,
    required UniqueId id,
    required String name,
    required String realName,
    required String emailId,
    required bool isMe,
    required String profilePhoto,
    required int backGroundColor,
  }) = _UserProfile;

  factory UserProfile.empty() => UserProfile(
        id: UniqueId(),
        emailId: '',
        name: '',
        isMe: true,
        profilePhoto: '',
        realName: '',
        backGroundColor: Colors.black.value,
      );
}
