import '../../product_page/domain/entity/product_details_entity.dart';

abstract class BasketRepository {

  Future<List<ProductDetailsEntity>> getProductList();

  Future<List<ProductDetailsEntity>> addInProductList({
    required int  productId,
    required int amount,
});

  Future<List<ProductDetailsEntity>> deleteFromProductList({
    required int  productId,
});

  Future<List<ProductDetailsEntity>> updateProductList({
    required int  productId,
    required int amount,
});

  Future<List<ProductDetailsEntity>> clearProductList();

}
