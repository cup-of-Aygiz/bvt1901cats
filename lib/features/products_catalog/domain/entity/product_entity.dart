import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    @Default(-1) final int id,
    @Default('') final String image,
    @Default('') final String volume,
    @Default('') final String name,
    @Default('') final String price,
    @Default(0) final int amount,
  }) = _ProductEntity;
  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
