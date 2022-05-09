import '../../../products_catalog/domain/entity/product_entity.dart';

abstract class BasketRepository {

  Future<List<ProductEntity>> getProductList({
    required int start,
    required int end,
  });

  Future<int> getMaxLengthProducts({
    required int start,
    required int end,
  });

  Future<double> getTotalPrice();
}
