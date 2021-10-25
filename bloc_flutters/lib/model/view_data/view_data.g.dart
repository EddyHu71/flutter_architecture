// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViewData _$$_ViewDataFromJson(Map<String, dynamic> json) => _$_ViewData(
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
      totalPages: json['total_pages'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ViewDataToJson(_$_ViewData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
      'support': instance.support,
    };
