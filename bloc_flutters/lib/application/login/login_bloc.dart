import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:bloc_flutters/domain/login/login_objects.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository iLoginRepository;
  LoginBloc(this.iLoginRepository) : super(LoginState.initial()) {
    // ignore: void_checks
    on<LoginEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(signIn: (e) async {
        print('sigIN');
        Either<LoginFailure, LoginModel>? failOrSuccess;
        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          emit(state.copyWith(
            isSubmitting: false,
            isLoading: true,
            authFailureOrSuccessOption: none(),
          ));

          await Future.delayed(const Duration(seconds: 1));
          failOrSuccess = await iLoginRepository.login(
              state.email.getOrCrash(), state.password.getOrCrash());
          print("Login success 2");
        }

        emit(state.copyWith(
            isSubmitting: false,
            isLoading: false,
            showErrorMessage: true,
            authFailureOrSuccessOption: optionOf(failOrSuccess)));
      }, onEmailChanged: (e) async {
        emit(state.copyWith(
          email: Email(e.email),
          authFailureOrSuccessOption: none(),
        ));
      }, onPasswordChanged: (e) async {
        emit(state.copyWith(
            password: Password(e.password),
            authFailureOrSuccessOption: none()));
      });
    });
  }

  Future _signIn(Emitter<LoginState> emit) async {}
}
