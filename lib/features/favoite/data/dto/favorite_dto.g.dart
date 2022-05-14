// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteDTO _$FavoriteDTOFromJson(Map<String, dynamic> json) => FavoriteDTO(
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
    );

Map<String, dynamic> _$FavoriteDTOToJson(FavoriteDTO instance) =>
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
    };
