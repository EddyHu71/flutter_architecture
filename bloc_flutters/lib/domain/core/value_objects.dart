import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_flutters/domain/core/errors.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<LoginFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<LoginFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
