part of 'onboard_bloc.dart';

@freezed
class OnboardEvent with _$OnboardEvent {
  const factory OnboardEvent.authToken() = _Started;
  const factory OnboardEvent.deleteAllLocalStorage() = _DeleteAllLocalStorage;
}