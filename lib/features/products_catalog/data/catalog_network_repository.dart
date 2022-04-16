import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:injectable/injectable.dart';
import '../domain/catalog_repository.dart';


@Injectable(as:CatalogRepository)
class CatalogNetworkRepository extends CatalogRepository {

  @override
  Future<List<ProductEntity>> getProductList({required int start, required int end}) {
    // TODO: implement getProductList
    throw UnimplementedError();
  }

  @override
  Future<int> getMaxLengthProducts() {
    // TODO: implement getMaxLengthProducts
    throw UnimplementedError();
  }
}
