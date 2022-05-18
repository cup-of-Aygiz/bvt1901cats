import '../../products_catalog/domain/entity/product_entity.dart';

abstract class FavoriteProductRepository {
  Future<List<ProductEntity>> getProductList();

  Future<List<ProductEntity>> deleteProducts(int id);

  Future<List<ProductEntity>> addedProducts(int id);
}
