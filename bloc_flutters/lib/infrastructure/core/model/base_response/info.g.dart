// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Info _$$_InfoFromJson(Map<String, dynamic> json) => _$_Info(
      count: json['count'] as int?,
      moreRecords: json['more_records'] as bool?,
      page: json['page'] as int?,
      pageSize: json['page_size'] as int?,
      sort: json['sort'] as String?,
      sortBy: json['sort_by'] as String?,
    );

Map<String, dynamic> _$$_InfoToJson(_$_Info instance) => <String, dynamic>{
      'count': instance.count,
      'more_records': instance.moreRecords,
      'page': instance.page,
      'page_size': instance.pageSize,
      'sort': instance.sort,
      'sort_by': instance.sortBy,
    };
