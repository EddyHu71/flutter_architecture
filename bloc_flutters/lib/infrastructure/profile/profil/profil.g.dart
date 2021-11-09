// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profil _$$_ProfilFromJson(Map<String, dynamic> json) => _$_Profil(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfilToJson(_$_Profil instance) => <String, dynamic>{
      'data': instance.data,
      'support': instance.support,
    };
