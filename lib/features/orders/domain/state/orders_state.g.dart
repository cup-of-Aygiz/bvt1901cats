// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrdersState _$$_OrdersStateFromJson(Map<String, dynamic> json) =>
    _$_OrdersState(
      loading: json['loading'] as bool? ?? false,
      ordersList: (json['ordersList'] as List<dynamic>)
          .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrdersStateToJson(_$_OrdersState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'ordersList': instance.ordersList,
      'error': instance.error,
    };
