import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'support.dart';

part 'view_data.freezed.dart';
part 'view_data.g.dart';

@freezed
class ViewData with _$ViewData {
  factory ViewData({
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    required List<Datum> data,
    Support? support,
  }) = _ViewData;

  factory ViewData.fromJson(Map<String, dynamic> json) =>
      _$ViewDataFromJson(json);
}
