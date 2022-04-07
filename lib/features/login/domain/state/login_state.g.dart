// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginState _$$_LoginStateFromJson(Map<String, dynamic> json) =>
    _$_LoginState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'],
      profileEntity: json['profileEntity'] == null
          ? null
          : ProfileEntity.fromJson(
              json['profileEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginStateToJson(_$_LoginState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'profileEntity': instance.profileEntity,
    };
