import '../../products_catalog/domain/entity/product_entity.dart';

abstract class FavoriteProductRepository {

  Future<List<ProductEntity>> getProductList();

  Future<List<ProductEntity>> deleteProduct({required int id});

  Future<List<ProductEntity>> addProduct({required int id});

}
