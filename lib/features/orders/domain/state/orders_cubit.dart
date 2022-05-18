import 'package:bvt1901_practice/features/orders/domain/entity/order_entity.dart';
import 'package:bvt1901_practice/features/orders/domain/orders_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../../di/service_locator.dart';
import 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(const OrdersState(ordersList: []));

  void init() async {
    await loadOrders();
  }

  OrderRepository get orderRepository => getIt();

  Future<void> loadOrders() async {
    try {
      emit(state.copyWith(loading: true));

      List<OrderEntity> orders = await orderRepository.getOrders();

      emit(state.copyWith(ordersList: orders));
      emit(state.copyWith(loading: false));

    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
