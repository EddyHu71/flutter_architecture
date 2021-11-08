import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/auth/auth_failure.dart';
import 'package:bloc_flutters/domain/auth/i_auth_repository.dart';
import 'package:bloc_flutters/infrastructure/core/storage_name.dart';
import 'package:code_id_flutter/code_services/storage/storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository iAuthRepository;
  AuthBloc(this.iAuthRepository) : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(
        authToken: (e) async {
          print("Auth executed");
          await Future.delayed(Duration(seconds: 3));
          var tokens = await iAuthRepository.authToken();
          print("Token value");
          print(tokens);
          emit(AuthState.loaded(optionFailedOrSuccess: optionOf(tokens)));
        });
    });
  }
}
