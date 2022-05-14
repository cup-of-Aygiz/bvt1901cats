
import '../../products_catalog/domain/entity/product_entity.dart';

abstract class FavoriteProductRepository {

  Future<List<ProductEntity>> getProductList();

}
