// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressEntity _$$_AddressEntityFromJson(Map<String, dynamic> json) =>
    _$_AddressEntity(
      address: json['address'] as String? ?? '',
      entrance: json['entrance'] as int? ?? 0,
      flat: json['flat'] as int? ?? 0,
      floor: json['floor'] as int? ?? 0,
      intercom: json['intercom'] as int? ?? 0,
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$_AddressEntityToJson(_$_AddressEntity instance) =>
    <String, dynamic>{
      'address': instance.address,
      'entrance': instance.entrance,
      'flat': instance.flat,
      'floor': instance.floor,
      'intercom': instance.intercom,
      'comment': instance.comment,
    };
