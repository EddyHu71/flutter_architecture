import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:bloc_flutters/domain/login/login_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository iLoginRepository;
  LoginBloc(this.iLoginRepository) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async* {
      // TODO: implement event handler

      yield* event.map(
        signIn: (e) async* {

      }, 
      onEmailChanged: (e) async* {
        yield state.copyWith(
          email: Email(e.email),
          authFailureOrSuccessOption: none(),
        );
      }, 
      onPasswordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none()
        );
      });
    });
  }
}
