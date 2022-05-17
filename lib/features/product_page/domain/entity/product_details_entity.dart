import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_entity.freezed.dart';
part 'product_details_entity.g.dart';

@freezed
class ProductDetailsEntity with _$ProductDetailsEntity{

  const factory ProductDetailsEntity({
    @Default(-1) final int id,
    @Default('') final String name,
    @Default('') final String price,
    @Default(0) final int amount,
    @Default('') final String volume,
    @Default('') final String ingredients,
    @Default('') final String made,
    @Default('') final String manufacturer,
    @Default('') final String image,
    @Default(false) final bool? favorite,
})=_ProductDetailsEntity;

  factory ProductDetailsEntity.fromJson(Map<String,dynamic> json)=>_$ProductDetailsEntityFromJson(json);
}