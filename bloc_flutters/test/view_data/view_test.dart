import 'package:bloc_flutters/application/profile/profil_bloc.dart';
import 'package:bloc_flutters/application/view_data/view_data_bloc.dart';
import 'package:bloc_flutters/domain/profil/i_profil_repository.dart';
import 'package:bloc_flutters/domain/profil/profil_failure.dart';
import 'package:bloc_flutters/domain/view_data/i_view_repository.dart';
import 'package:bloc_flutters/domain/view_data/view_failure.dart';
import 'package:bloc_flutters/model/view_data/datum.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockViewRepo extends Mock implements IViewRepository {
}

void main() {
  late MockViewRepo mockViewRepo;
  late ViewDataBloc viewDataBloc;
  late ViewDataState viewDataState;
  late ViewData viewData;
  late List<Datum> data;

  setUp(() {
    mockViewRepo = MockViewRepo();
    viewDataBloc = ViewDataBloc(mockViewRepo);
    data = <Datum>[
      Datum(
        id: 1, 
        name: "Nama", 
        year: 2021, 
        color: "grey", 
        pantoneValue: "red"
      ),
      Datum(
        id: 2, 
        name: "Nama", 
        year: 2021, 
        color: "grey", 
        pantoneValue: "red"
      ),
      Datum(
        id: 3, 
        name: "Nama", 
        year: 2021, 
        color: "grey", 
        pantoneValue: "red"
      ),
    ].toList();

    viewData = ViewData(
      page: 2,
      perPage: 2,
      total: 2,
      data: data, 
      totalPages: 2,
    );
    viewDataState = ViewDataState.initial();

    tearDown(() {
      viewDataBloc.close();
    });
  });
  blocTest("Initial Test", build: () => viewDataBloc, expect: () => []);
  // blocTest(
  //   "Start Event failed", 
  // build: () {
  //   when(() => mockViewRepo.getData()).thenAnswer((_) async => left(ViewFailure.failed()));
  //   return mockViewRepo;
  // },
  // act: (ViewDataBloc bloc) => bloc.add(ViewDataEvent.started()) ,
  // wait: Duration(seconds: 3),
  // expect: () => {
  //     print("Start Event failed"),
  //     ViewDataState.initial(),
  //     ViewDataState.loaded(optionFailedOrSuccess: optionOf(left(ViewFailure.failed())))
  //   }
  // );
  // blocTest(
  //   "Start Event no Data", 
  // build: () {
  //   when(() => mockViewRepo.getData()).thenAnswer((_) async => left(ViewFailure.noData()));
  //   return mockViewRepo;
  // },
  // act: (ViewDataBloc bloc) => bloc.add(ViewDataEvent.getData()),
  // wait: Duration(seconds: 3),
  // expect: () => {
  //     print("Start Event No Data"),
  //     ViewDataState.initial(),
  //     ViewDataState.loaded(optionFailedOrSuccess: optionOf(left(ViewFailure.noData())))
  //   }
  // );
}
