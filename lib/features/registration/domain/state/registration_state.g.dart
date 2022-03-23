// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationState _$$_RegistrationStateFromJson(Map<String, dynamic> json) =>
    _$_RegistrationState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'],
      personEntity:
          PersonEntity.fromJson(json['personEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegistrationStateToJson(
        _$_RegistrationState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'personEntity': instance.personEntity,
    };
