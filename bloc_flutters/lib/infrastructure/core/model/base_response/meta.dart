import 'package:freezed_annotation/freezed_annotation.dart';

import 'info.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  factory Meta({
    Info? info,
    required String message,
    required bool success,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
