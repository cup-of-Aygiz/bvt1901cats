import 'entity/order_entity.dart';

abstract class OrderRepository {
  Future<List<OrderEntity>> getOrders();

  Future<List<OrderEntity>> addOrders();
}
