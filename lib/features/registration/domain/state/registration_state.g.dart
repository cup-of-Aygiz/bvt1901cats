// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationState _$$_RegistrationStateFromJson(Map<String, dynamic> json) =>
    _$_RegistrationState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'],
      firstName: json['firstName'] as String? ?? '',
      middleName: json['middleName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_RegistrationStateToJson(
        _$_RegistrationState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'password': instance.password,
    };
