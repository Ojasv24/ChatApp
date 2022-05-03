import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class MyUser with _$MyUser {
  const factory MyUser({
    required UniqueId id,
  }) = _MyUser;
}
