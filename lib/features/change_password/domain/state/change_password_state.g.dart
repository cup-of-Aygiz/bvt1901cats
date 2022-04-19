// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordState _$$_ChangePasswordStateFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      personEntity:
          PersonEntity.fromJson(json['personEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChangePasswordStateToJson(
        _$_ChangePasswordState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'personEntity': instance.personEntity,
    };
