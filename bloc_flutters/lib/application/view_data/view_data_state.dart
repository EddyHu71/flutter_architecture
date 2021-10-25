part of 'view_data_bloc.dart';

@freezed
class ViewDataState with _$ViewDataState {
  const factory ViewDataState.initial() = _Initial;
  const factory ViewDataState.loading() = _Loading;
  const factory ViewDataState.loaded(
      {required Option<Either<ValueFailure, ViewData>>
          optionFailedOrSuccess}) = _Loaded;
}
