import '../../products_catalog/domain/entity/product_entity.dart';

abstract class BasketRepository {

  Future<List<ProductEntity>> getProductList();

  Future<List<ProductEntity>> addInProductList({
    required int  productId,
    required int amount,
});

  Future<List<ProductEntity>> deleteFromProductList({
    required int  productId,
});

  Future<List<ProductEntity>> updateProductList({
    required int  productId,
    required int amount,
});


}
