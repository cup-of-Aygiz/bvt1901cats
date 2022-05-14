import '../../../products_catalog/domain/entity/product_entity.dart';

abstract class BasketRepository {

  Future<List<ProductEntity>> getProductList();


}
