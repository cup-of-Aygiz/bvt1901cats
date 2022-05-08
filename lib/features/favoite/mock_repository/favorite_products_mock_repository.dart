import 'package:bvt1901_practice/features/favoite/domain/favorite_product_repository.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:bvt1901_practice/utils/app_utils.dart';

import '../../../dev/mocking/mock_object.dart';
class FavoriteProductsMockRepository extends FavoriteProductRepository
    with MockFactory<FavoriteProductRepository> {
  @override
  Future<List<ProductEntity>> getProductList({
    required int start,
    required int end,
  }) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<ProductEntity> productsList = [];
    for (int i = 0; i < 100; i++) {
      productsList.add(
        ProductEntity(
          id: AppUtils.intInRange(1, 1000000),
          image:
          "https://chance2.ru/photo/img/ostav-kotu-vody-pobolshe-foto-24.jpg",
          name: "Водичка $i",
          price: AppUtils.intInRange(20, 500).toString(),
          amount: AppUtils.intInRange(0, 100),
        ),
      );
    }

    return productsList.sublist(start, end < 100 ? end : 100);
  }

  @override
  Future<int> getMaxLengthProducts(
      {required int start, required int end}) async {
    return 100;
  }
}
