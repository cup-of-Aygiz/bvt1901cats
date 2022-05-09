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
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      start: json['start'] as int? ?? 0,
      end: json['end'] as int? ?? 10,
      maxLength: json['maxLength'] as int? ?? 20,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_BasketStateToJson(_$_BasketState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'productList': instance.productList,
      'start': instance.start,
      'end': instance.end,
      'maxLength': instance.maxLength,
      'totalPrice': instance.totalPrice,
    };
