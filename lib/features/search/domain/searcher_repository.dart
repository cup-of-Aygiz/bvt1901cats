
import '../../products_catalog/domain/entity/product_entity.dart';

abstract class SearcherRepository {
  Future<List<ProductEntity>> search({
    required String searchText,
  });
}
