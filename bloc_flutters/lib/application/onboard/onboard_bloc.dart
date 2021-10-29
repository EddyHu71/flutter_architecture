import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/onboard/i_onboard_repository.dart';
import 'package:bloc_flutters/domain/onboard/onboard_failure.dart';
import 'package:bloc_flutters/domain/onboard/onboard_objects.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboard_event.dart';
part 'onboard_state.dart';
part 'onboard_bloc.freezed.dart';

class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  final IOnBoardRepository iOnBoardRepository;
  OnboardBloc(this.iOnBoardRepository) : super(OnboardState.initial()) {
    on<OnboardEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(
        authToken: (e) async {
          Either<OnBoardFailure, Unit>? failOrSuccess;
          final isTokenValid = state.jwtToken.isValid();
          if (isTokenValid) {
            emit(state.copyWith(
              isLoading: true,
              isAuthenticated: false,
              
            ));
          }
      });
    });
  }

}
