// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      orderNumber: json['orderNumber'] as String? ?? '',
      orderDate: json['orderDate'] as String? ?? '',
      deliveryAddress: json['deliveryAddress'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  ProductDetailsEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      price: json['price'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'orderNumber': instance.orderNumber,
      'orderDate': instance.orderDate,
      'deliveryAddress': instance.deliveryAddress,
      'products': instance.products,
      'price': instance.price,
    };
