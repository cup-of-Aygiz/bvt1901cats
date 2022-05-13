// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressesState _$$_AddressesStateFromJson(Map<String, dynamic> json) =>
    _$_AddressesState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      addressesList: (json['addressesList'] as List<dynamic>?)
              ?.map((e) => AddressEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_AddressesStateToJson(_$_AddressesState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'addressesList': instance.addressesList,
    };
