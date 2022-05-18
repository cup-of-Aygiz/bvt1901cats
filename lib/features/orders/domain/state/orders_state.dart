import 'package:bvt1901_practice/features/orders/domain/entity/order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';

part 'orders_state.freezed.dart';
part 'orders_state.g.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(false) bool loading,
    required final List<OrderEntity> ordersList,
    final ErrorModel? error,
  }) = _OrdersState;

  factory OrdersState.fromJson(Map<String, dynamic> json) =>
      _$OrdersStateFromJson(json);
}
