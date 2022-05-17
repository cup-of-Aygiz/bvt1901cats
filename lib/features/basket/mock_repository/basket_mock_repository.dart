import 'package:bvt1901_practice/features/basket/domain/basket_repository.dart';

import '../../../dev/mocking/mock_object.dart';
import '../../../utils/app_utils.dart';
import '../../products_catalog/domain/entity/product_entity.dart';

class BasketMockRepository extends BasketRepository
    with MockFactory<BasketRepository> {

  @override
  Future<List<ProductEntity>> getProductList() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<ProductEntity> productsList = [];
    for (int i = 0; i < 20; i++) {
      productsList.add(
        ProductEntity(
          id: AppUtils.intInRange(1, 1000000),
          image:
          "https://chance2.ru/photo/img/ostav-kotu-vody-pobolshe-foto-24.jpg",
          name: "Водичка $i",
          price: AppUtils.intInRange(20, 100).toString(),
          amount: AppUtils.intInRange(0, 10),
        ),
      );
    }

    return productsList;
  }


  @override
  Future<List<ProductEntity>> updateProductList({required int productId, required int amount}) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> addInProductList({required int productId, required int amount}) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> deleteFromProductList({required int productId}) {
    throw UnimplementedError();
  }


}
