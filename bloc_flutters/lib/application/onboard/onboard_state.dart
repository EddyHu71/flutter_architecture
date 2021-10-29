part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState({
    required JWTToken jwtToken,
    required bool isAuthenticated,
    required bool isLoading,
    required Option<Either<OnBoardFailure, Unit>> authTokenFailOrSuccessOption,
  }) = _OnboardState;

  factory OnboardState.initial() => OnboardState(
    jwtToken: JWTToken(''),
    isLoading: false,
    isAuthenticated: false, 
    authTokenFailOrSuccessOption: none()
  );
}
