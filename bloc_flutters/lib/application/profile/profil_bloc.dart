import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/profil/i_profil_repository.dart';
import 'package:bloc_flutters/domain/profil/profil_failure.dart';
import 'package:bloc_flutters/presentation/home/model/profile_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profil_event.dart';
part 'profil_state.dart';
part 'profil_bloc.freezed.dart';

@injectable
class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  final IProfilRepository iProfilRepository;
  ProfilBloc(this.iProfilRepository) : super(_Initial()) {
    on<ProfilEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(
          getProfile: (_) async {
            print("Get Profile executed");
            var profile = await iProfilRepository.getProfile("2");

            print(profile);
            // emit(ProfilState.loaded(optionFailedOrSuccess: optionOf(profile)));
            emit(ProfilState.loaded(optionFailedOrSuccess: optionOf(profile)));
          },
          logout: (e) {
            print("Logout bloc");
            iProfilRepository.logout();
            
          },
          updateProfile: (e) {});
    });
  }
}
