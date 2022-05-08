import 'package:bvt1901_practice/features/products_catalog/data/dto/product_dto.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:injectable/injectable.dart';
import '../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../app/data/network_servise/dio_container.dart';
import '../domain/catalog_repository.dart';

@Injectable(as: CatalogRepository)
class CatalogNetworkRepository extends CatalogRepository {
  final DioContainer dioContainer;

  CatalogNetworkRepository(this.dioContainer);

  @override
  Future<List<ProductEntity>> getProductList({
    required int start,
    required int end,
  }) async {
    try {
      final response = await dioContainer.dio.get(
        '/catalog',
        queryParameters: {
          "offset": start,
          "limit": end,
        },
      );
      final newList = List<ProductEntity>.from(
          response.data['rows'].map((e) => ProductDTO.fromJson(e).toEntity()));
      return newList;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<int> getMaxLengthProducts({
    required int start,
    required int end,
  }) async {
    try {
      final response = await dioContainer.dio.get(
        '/catalog',
        queryParameters: {
          "offset": start,
          "limit": end,
        },
      );
      return 100;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
