import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/product_entity.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDTO {
  final int? id;
  final List<String>? images;
  final String? name;
  final String? volume;
  final String? price;
  final int? amount;

  ProductDTO({
    required this.id,
    required this.images,
    required this.name,
    required this.volume,
    required this.price,
    required this.amount,
  });

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);

  ProductEntity toEntity() {
    return ProductEntity(
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
    );
  }
}
