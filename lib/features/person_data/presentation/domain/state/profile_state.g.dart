// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileState _$$_ProfileStateFromJson(Map<String, dynamic> json) =>
    _$_ProfileState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      profileEntity: json['profileEntity'] == null
          ? null
          : ProfileEntity.fromJson(
              json['profileEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileStateToJson(_$_ProfileState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'profileEntity': instance.profileEntity,
    };
