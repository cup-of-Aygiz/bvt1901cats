import 'dart:developer';

import 'package:json_annotation/json_annotation.dart';

import '../../../products_catalog/domain/entity/product_entity.dart';

part 'favorite_dto.g.dart';

@JsonSerializable()
class FavoriteDTO{

  final int? id;
  final List<String>? images;
  final String? name;
  final String? volume;
  final String? price;
  final int? amount;
  final String? ingredients;
  final String? made;
  final String? manufacturer;
  final String? createdAt;
  final String? updatedAt;


  FavoriteDTO({
    required this.id,
    required this.images,
    required this.name,
    required this.volume,
    required this.price,
    required this.amount,
    required this.ingredients,
    required this.made,
    required this.manufacturer,
    required this.createdAt,
    required this.updatedAt,
  });

  factory FavoriteDTO.fromJson(Map<String, dynamic> json) => _$FavoriteDTOFromJson(json);

  ProductEntity toEntity() {
    late ProductEntity pr;
    try {
      pr= ProductEntity(
        id: id ?? -1,
        image: images == null
            ? ''
            : images!.isNotEmpty
            ? images!.first
            : '',
        name: name ?? '',
        price: price ?? '',
        amount: amount ?? -1,
        volume: volume ?? '',
        isLiked: true
      );
    }
    catch(e){
      log("${e}");
    }

    return pr;
  }

}