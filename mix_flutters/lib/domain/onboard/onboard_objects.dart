
import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/value_objects.dart';
import 'package:bloc_flutters/domain/core/value_validators.dart';
import 'package:fpdart/src/either.dart';

class JWTToken extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory JWTToken(String input) {
    assert (input != null);
    return JWTToken._(
      validateToken(input, 20)
    );
  }

  const JWTToken._(this.value);
}