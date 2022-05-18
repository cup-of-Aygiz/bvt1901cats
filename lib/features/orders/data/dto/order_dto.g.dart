// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) => OrderDTO(
      id: json['id'] as int?,
      createdAt: json['createdAt'] as String?,
      deliveryAddress: json['deliveryAddress'] as String?,
      orderEntities: (json['orderEntities'] as List<dynamic>?)
          ?.map((e) => ProductDetailsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderDTOToJson(OrderDTO instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'deliveryAddress': instance.deliveryAddress,
      'orderEntities': instance.orderEntities,
      'price': instance.price,
    };
