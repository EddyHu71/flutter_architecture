import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/profile/i_profile_repository.dart';
import 'package:bloc_flutters/domain/profile/profile_failure.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/model/profile/detail_profile/profile_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository profileRepository;
  ProfileBloc(this.profileRepository) : super(_Initial()) {
    on<ProfileEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(getDataProfile: (_) async {
        print("Profile Bloc executed");
        emit(ProfileState.loading());
        Future.delayed(const Duration(seconds: 1));
        var token = await storageData.getToken();
        // print("Token: " + token);
        var res = await profileRepository.getProfileData("2", token.toString());
        emit(ProfileState.loaded(optionFailedOrSuccess: optionOf(res)));
      });
    });
  }
}
