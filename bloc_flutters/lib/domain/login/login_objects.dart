import 'package:bloc_flutters/domain/core/value_objects.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:bloc_flutters/domain/core/value_validators.dart';

class Email extends ValueObject<String> {
  @override
  final Either<LoginFailure<String>, String> value;

  factory Email(String input) {
    assert(input != null);
    return Email._(
      validateEmail(input),
    );
  }
  const Email._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<LoginFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
