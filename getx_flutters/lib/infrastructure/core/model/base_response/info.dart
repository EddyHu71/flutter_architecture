import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  factory Info({
    int? count,
    @JsonKey(name: 'more_records') bool? moreRecords,
    int? page,
    @JsonKey(name: 'page_size') int? pageSize,
    String? sort,
    @JsonKey(name: 'sort_by') String? sortBy,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
