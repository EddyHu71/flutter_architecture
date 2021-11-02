import 'package:bloc/bloc.dart';
import 'package:bloc_flutters/domain/view_data/i_view_repository.dart';
import 'package:bloc_flutters/domain/view_data/view_failure.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'view_data_event.dart';
part 'view_data_state.dart';
part 'view_data_bloc.freezed.dart';

@injectable
class ViewDataBloc extends Bloc<ViewDataEvent, ViewDataState> {
  final IViewRepository viewRepository;
  ViewDataBloc(this.viewRepository) : super(_Initial()) {
    // ignore: void_checks
    on<ViewDataEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(started: (_) async {
        print("View Data Bloc executed");
        emit(const ViewDataState.loading());
        Future.delayed(const Duration(seconds: 3));
        var res = await viewRepository.getData();
        emit(ViewDataState.loaded(optionFailedOrSuccess: optionOf(res)));
      });
    });
  }
}
