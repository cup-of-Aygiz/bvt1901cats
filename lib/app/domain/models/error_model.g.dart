// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorModel _$$_ErrorModelFromJson(Map<String, dynamic> json) =>
    _$_ErrorModel(
      json['message'] as String,
      error: json['error'],
      details: json['details'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_ErrorModelToJson(_$_ErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'details': instance.details,
      'code': instance.code,
    };
