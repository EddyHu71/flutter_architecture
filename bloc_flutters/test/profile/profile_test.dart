import 'package:bloc_flutters/application/profile/profil_bloc.dart';
import 'package:bloc_flutters/domain/profil/i_profil_repository.dart';
import 'package:bloc_flutters/domain/profil/profil_failure.dart';
import 'package:bloc_flutters/infrastructure/profile/profil/profil.dart';
import 'package:bloc_flutters/presentation/home/model/support.dart';
import 'package:bloc_flutters/presentation/home/model/data.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_flutters/presentation/home/model/profile_model.dart';

class MockProfileRepo extends Mock implements IProfilRepository {
}

void main() {
  late MockProfileRepo profileRepo;
  late ProfilBloc profilBloc;
  late Data? data;
  late Support support;
  late ProfileModel profileModel;
  late ProfilState profilState;

  setUp(() {
    profileRepo = MockProfileRepo();
    profilBloc = ProfilBloc(profileRepo);
    
    data = Data(
      id: 1,
      firstName: "First",
      lastName: "Last",
      email: "Email",
    );
    profileModel = ProfileModel(data: data, support: Support(text: "", url: "") );
    profilState = ProfilState.initial();
  });

  tearDown(() {
    profilBloc.close();
  });

  blocTest("Initial Test", build: () => profilBloc, expect: () => []);
  blocTest(
    "Start Event failed", 
  build: () {
    when(() => profileRepo.getProfile("1")).thenAnswer((_) async => left(ProfilFailure.failed()));
    return profilBloc;
  },
  act: (ProfilBloc bloc) => bloc.add(ProfilEvent.getProfile()) ,
  wait: Duration(seconds: 3),
  expect: () => {
    print("Start Event Failed"),
    ProfilState.initial(),
    ProfilState.loaded(optionFailedOrSuccess: optionOf(left(ProfilFailure.failed()))),
  });

  blocTest(
    "Start Event No Data", 
  build: () {
    when(() => profileRepo.getProfile("1")).thenAnswer((_) async => left(ProfilFailure.noData()));
    return profilBloc;
  },
  act: (ProfilBloc bloc) => bloc.add(ProfilEvent.getProfile()) ,
  wait: Duration(seconds: 3),
  expect: () => {
    print("Start Event no Data"),
    ProfilState.initial(),
    ProfilState.loaded(optionFailedOrSuccess: optionOf(left(ProfilFailure.noData()))),
  });
  blocTest(
    "Start Event No Internet", 
  build: () {
    when(() => profileRepo.getProfile("1")).thenAnswer((_) async => left(ProfilFailure.noInternet()));
    return profilBloc;
  },
  act: (ProfilBloc bloc) => bloc.add(ProfilEvent.getProfile()) ,
  wait: Duration(seconds: 3),
  expect: () => {
    print("Start Event noInternet"),
    ProfilState.initial(),
    ProfilState.loaded(optionFailedOrSuccess: optionOf(left(ProfilFailure.noInternet()))),
  });

    blocTest(
    "Start Event Success", 
  build: () {
    when(() => profileRepo.getProfile("1")).thenAnswer((_) async => right(profileModel));
    return profilBloc;
  },
  act: (ProfilBloc bloc) => bloc.add(ProfilEvent.getProfile()) ,
  wait: Duration(seconds: 3),
  expect: () => {
    print("Start Event Success"),
    ProfilState.initial(),
    ProfilState.loaded(optionFailedOrSuccess: optionOf(right(profileModel))),
  });
}
