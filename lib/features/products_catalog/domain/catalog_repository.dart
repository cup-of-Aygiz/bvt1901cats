import 'entity/product_entity.dart';

abstract class CatalogRepository {
  Future<List<ProductEntity>> getProductList({
    required int start,
    required int end,
  });
  Future<int> getMaxLengthProducts();
}
