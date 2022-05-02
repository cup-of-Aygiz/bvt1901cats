// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      id: json['id'] as int? ?? -1,
      image: json['image'] as String? ?? '',
      volume: json['volume'] as String? ?? '',
      name: json['name'] as String? ?? '',
      price: json['price'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'volume': instance.volume,
      'name': instance.name,
      'price': instance.price,
      'amount': instance.amount,
    };
