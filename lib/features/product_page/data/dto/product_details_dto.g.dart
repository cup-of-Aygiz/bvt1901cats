// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsDTO _$ProductDetailsDTOFromJson(Map<String, dynamic> json) =>
    ProductDetailsDTO(
      id: json['id'] as int?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String?,
      volume: json['volume'] as String?,
      price: json['price'] as String?,
      amount: json['amount'] as int?,
      ingredients: json['ingredients'] as String?,
      made: json['made'] as String?,
      manufacturer: json['manufacturer'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      favorite: json['favorite'] as bool?,
      cartAmount: json['cartAmount'] as int?,
    );

Map<String, dynamic> _$ProductDetailsDTOToJson(ProductDetailsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'volume': instance.volume,
      'price': instance.price,
      'amount': instance.amount,
      'ingredients': instance.ingredients,
      'made': instance.made,
      'manufacturer': instance.manufacturer,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'favorite': instance.favorite,
      'cartAmount': instance.cartAmount,
    };
