import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    required int id,
    required String name,
    required int year,
    required String color,
    @JsonKey(name: 'pantone_value') required String pantoneValue,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
