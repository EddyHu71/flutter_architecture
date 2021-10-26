import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/register/i_register_repository.dart';
import 'package:bloc_flutters/domain/register/register_failure.dart';
import 'package:bloc_flutters/domain/register/register_objects.dart';
import 'package:bloc_flutters/model/register_response/register_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegisterRepository iRegisterRepository;
  RegisterBloc(this.iRegisterRepository) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      // TODO: implement event handler
    await event.map(submitRegister: (e) async {
      register();
    }, onEmailChanged: (e) async {
      emit(state.copyWith(
          email: Email(e.email),
          authfailureOrSuccessOption: none(),
        ));
    }, onPasswordChanged: (e) async {
      emit(state.copyWith(
        password: Password(e.password),
        authfailureOrSuccessOption: none(),
      ));
    });
    });
  }

  register() async {
    print("Register");
    Either<RegisterFailure, RegisterModel>? failOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: false,
        isLoading: true,
        authfailureOrSuccessOption: none()
      ));
      await Future.delayed(const Duration(seconds: 2));
      failOrSuccess = await iRegisterRepository.register(state.email.getOrCrash(), state.password.getOrCrash());
      print("Register success");
    }

    emit(state.copyWith(
      isSubmitting: false,
      isLoading: false,
      showErrorMessage: true,
      authfailureOrSuccessOption: optionOf(failOrSuccess)
    ));
  }
}
