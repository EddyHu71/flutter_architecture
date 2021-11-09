part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.loaded(
      {required Option<Either<LogoutFailure, Unit>>
          optionFailedOrSuccess}) = _Loaded;
}
