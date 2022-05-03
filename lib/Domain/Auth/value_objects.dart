import 'package:chatapp_dda/Domain/Core/value_validate.dart';
import 'package:dartz/dartz.dart';

import 'package:chatapp_dda/Domain/Core/failures.dart';
import 'package:chatapp_dda/Domain/Core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
   
    return Password._(
      validatePassword(input),
    );
  }
  const Password._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    
    return Name._(
      validateName(input),
    );
  }
  const Name._(this.value);
}
