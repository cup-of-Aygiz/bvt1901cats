import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/product_details_entity.dart';


part 'product_details_dto.g.dart';

@JsonSerializable()
class ProductDetailsDTO {
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
  final bool? favorite;

  ProductDetailsDTO({
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
    required this.favorite,
  });

  factory ProductDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDTOFromJson(json);

  ProductDetailsEntity toDetailsEntity() {
    return ProductDetailsEntity(
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
      ingredients: ingredients ?? '',
      made: made ?? '',
      manufacturer: manufacturer ?? '',
      favorite: favorite ?? false,
    );
  }
}
