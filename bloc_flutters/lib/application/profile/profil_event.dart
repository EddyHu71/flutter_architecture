part of 'profil_bloc.dart';

@freezed
class ProfilEvent with _$ProfilEvent {
  const factory ProfilEvent.getProfile() = _GetProfile;
  const factory ProfilEvent.updateProfile() = _UpdateProfile;
  const factory ProfilEvent.logout() = _Logout;
}
