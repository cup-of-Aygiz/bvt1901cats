// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketState _$$_BasketStateFromJson(Map<String, dynamic> json) =>
    _$_BasketState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      productList: (json['productList'] as List<dynamic>?)
              ?.map((e) =>
                  ProductDetailsEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_BasketStateToJson(_$_BasketState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'productList': instance.productList,
      'totalPrice': instance.totalPrice,
    };
