import 'package:bvt1901_practice/features/basket/domain/basket_repository.dart';
import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';

import '../../../dev/mocking/mock_object.dart';
import '../../../utils/app_utils.dart';

class BasketMockRepository extends BasketRepository
    with MockFactory<BasketRepository> {
  @override
  Future<List<ProductDetailsEntity>> getProductList() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<ProductDetailsEntity> productsList = [];
    for (int i = 0; i < 20; i++) {
      productsList.add(
        ProductDetailsEntity(
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
  Future<List<ProductDetailsEntity>> addInProductList(
      {required int productId, required int amount}) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductDetailsEntity>> deleteFromProductList(
      {required int productId}) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductDetailsEntity>> updateProductList(
      {required int productId, required int amount}) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductDetailsEntity>> clearProductList() {
    throw UnimplementedError();
  }
}
