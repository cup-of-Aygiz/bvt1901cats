import 'package:bvt1901_practice/features/orders/domain/entity/order_entity.dart';
import 'package:bvt1901_practice/features/orders/domain/orders_repository.dart';
import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';

import '../../../dev/mocking/mock_object.dart';
import '../../../utils/app_utils.dart';

class OrdersMockRepository extends OrderRepository
    with MockFactory<OrderRepository> {

  @override
  Future<List<OrderEntity>> addOrders() {
    // TODO: implement addOrders
    throw UnimplementedError();
  }

  List<ProductDetailsEntity> getEntity(){

    List<ProductDetailsEntity> products=[];
    for(int i=0;i<6;i++){
      products.add(ProductDetailsEntity(
        id: i,
        name: 'Водичка $i',
        price: AppUtils.intInRange(20, 500).toString(),
        amount: AppUtils.intInRange(20, 500),
        image:
        "https://chance2.ru/photo/img/ostav-kotu-vody-pobolshe-foto-24.jpg",
        manufacturer: "MTUSI",
        made: "Москва",
        volume: "$i л",
        ingredients: "Много полезных веществ таких как Mg,Ca,K"
      ));
    }
    return products;
  }

  @override
  Future<List<OrderEntity>> getOrders() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<OrderEntity> orders = [];

    for (int i = 0; i < 10; i++) {
      orders.add(
        OrderEntity(
          orderNumber: AppUtils.intInRange(100000, 1000000),
          orderDate: '${DateTime.now()}',
          deliveryAddress: 'Москва улица Маршала Тухачевского 18, 411, поъезд 1, этаж 4',
          price: 456,
          products: getEntity(),
        ),
      );
    }
    return orders;
  }
}
