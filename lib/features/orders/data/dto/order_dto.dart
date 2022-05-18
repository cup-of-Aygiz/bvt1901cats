import 'package:bvt1901_practice/features/orders/domain/entity/order_entity.dart';
import 'package:bvt1901_practice/features/product_page/data/dto/product_details_dto.dart';
import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'order_dto.g.dart';

@JsonSerializable()
class OrderDTO {

  final int? id;
  final String? createdAt;
  final String? deliveryAddress;
  final List<ProductDetailsDTO>? orderEntities;
  final double? price;

  OrderDTO({
    required this.id,
    required this.createdAt,
    required this.deliveryAddress,
    required this.orderEntities,
    required this.price,
  });

  factory OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderDTOFromJson(json);

  OrderEntity toEntity() {

    List<ProductDetailsEntity> productsList=[];
    if(orderEntities!=null) {
      if(orderEntities!.isNotEmpty) {
        for (var item in orderEntities!) {
          productsList.add(item.toEntity());
        }
      }
    }

    return OrderEntity(
      orderNumber: id ?? 0,
      orderDate: createdAt ?? '',
      price: price ?? 0,
      deliveryAddress: deliveryAddress ?? '',
      products: productsList,
    );
  }
}
