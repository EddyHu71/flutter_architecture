import 'package:dartz/dartz.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';

Either<LoginFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(LoginFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<LoginFailure<String>, String> validateEmail(String input) {
  if (input.contains("@")) {
    return left(LoginFailure.invalidEmail(failedValue: input));
  } else {
    return right(input);
  }
}

Either<LoginFailure<String>, String> validatePassword(String input) {
  if (input.length >= 4) {
    return right(input);
  } else {
    return left(LoginFailure.invalidPassword(failedValue: input));
  }
}
