import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/view_data/i_view_repository.dart';
import 'package:bloc_flutters/domain/view_data/view_failure.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_data_event.dart';
part 'view_data_state.dart';
part 'view_data_bloc.freezed.dart';

class ViewDataBloc extends Bloc<ViewDataEvent, ViewDataState> {
  final IViewRepository viewRepository;
  ViewDataBloc(this.viewRepository) : super(_Initial()) {
    // ignore: void_checks
    on<ViewDataEvent>((event, emit) async* {
      // TODO: implement event handler
      yield* event.map(started: (_) async* {
        yield const ViewDataState.loading();
        Future.delayed(const Duration(seconds: 3));
        var res = await viewRepository.getData();
        yield ViewDataState.loaded(optionFailedOrSuccess: optionOf(res));
      });
    });
  }
}
