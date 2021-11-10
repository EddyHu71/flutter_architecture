part of 'profil_bloc.dart';

@freezed
class ProfilState with _$ProfilState {
  const factory ProfilState.initial() = _Initial;
  const factory ProfilState.loaded(
      {
        required Option<Either<ProfilFailure, ProfileModel>>
          optionFailedOrSuccess}) = _Loaded;
  const factory ProfilState.logouted({
    required Option<Either<ProfilFailure, Unit>> optionFailedOrSuccess
  }) = _Logouted;
}
