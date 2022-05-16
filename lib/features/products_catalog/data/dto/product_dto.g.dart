// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) => ProductDTO(
      id: json['id'] as int?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String?,
      volume: json['volume'] as String?,
      price: json['price'] as String?,
      amount: json['amount'] as int?,
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$ProductDTOToJson(ProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'volume': instance.volume,
      'price': instance.price,
      'amount': instance.amount,
      'favorite': instance.favorite,
    };
