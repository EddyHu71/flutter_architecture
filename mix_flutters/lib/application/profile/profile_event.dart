part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getDataProfile() = _GetDataProfile;
  const factory ProfileEvent.logout() = _Logout;
}
