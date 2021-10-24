import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:bloc_flutters/domain/login/login_objects.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository iLoginRepository;
  LoginBloc(this.iLoginRepository) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async* {
      // TODO: implement event handler
      yield* event.map(
          signIn: (e) async* {
            yield _signIn();
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
                authFailureOrSuccessOption: none());
          });
    });
  }

  Stream<LoginState> _signIn() async* {
    Either<ValueFailure, LoginModel>? failOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: false,
        isLoading: false,
        authFailureOrSuccessOption: none(),
      );

      await Future.delayed(Duration(seconds: 1));
      failOrSuccess = await iLoginRepository.login(state.email.getOrCrash(), state.password.getOrCrash());
      print("Login success");
    }

    yield state.copyWith(
      isSubmitting: false,
      isLoading: false,
      showErrorMessage: false,
      authFailureOrSuccessOption: none()
    );
  }
}