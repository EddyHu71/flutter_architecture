import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/auth/auth_failure.dart';
import 'package:bloc_flutters/domain/logout/i_logout_repository.dart';
import 'package:bloc_flutters/domain/logout/logout_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final ILogoutRepository iLogoutRepository;
  LogoutBloc(this.iLogoutRepository) : super(_Initial()) {
    on<LogoutEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(logout: (_) async {
        print("Logout executed");
        var logout = await iLogoutRepository.logout();
        print("Logout value");
        print(logout);
        emit(LogoutState.loaded(optionFailedOrSuccess: optionOf(logout)));
      });
    });
  }
}
