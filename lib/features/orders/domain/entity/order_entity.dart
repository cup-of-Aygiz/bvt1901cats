import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product_page/domain/entity/product_details_entity.dart';

part 'order_entity.freezed.dart';

part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @Default('') final String orderNumber,
    @Default('') final String orderDate,
    @Default('') final String deliveryAddress,
    @Default([]) final List<ProductDetailsEntity> products,
    @Default('') final String price,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
