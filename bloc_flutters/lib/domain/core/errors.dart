import 'package:bloc_flutters/domain/login/login_failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final LoginFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a LoginFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
