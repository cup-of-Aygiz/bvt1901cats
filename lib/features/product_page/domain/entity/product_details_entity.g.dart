// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsEntity _$$_ProductDetailsEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsEntity(
      id: json['id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      price: json['price'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      volume: json['volume'] as String? ?? '',
      ingredients: json['ingredients'] as String? ?? '',
      made: json['made'] as String? ?? '',
      manufacturer: json['manufacturer'] as String? ?? '',
      image: json['image'] as String? ?? '',
      favorite: json['favorite'] as bool? ?? false,
      cartAmount: json['cartAmount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductDetailsEntityToJson(
        _$_ProductDetailsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'amount': instance.amount,
      'volume': instance.volume,
      'ingredients': instance.ingredients,
      'made': instance.made,
      'manufacturer': instance.manufacturer,
      'image': instance.image,
      'favorite': instance.favorite,
      'cartAmount': instance.cartAmount,
    };
