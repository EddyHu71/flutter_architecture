part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loaded({
    required Option<Either<AuthFailure, Unit>> optionFailedOrSuccess
  }) = _Loaded;
}
