import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:injectable/injectable.dart';
import '../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../products_catalog/data/dto/product_dto.dart';
import '../../products_catalog/domain/entity/product_entity.dart';
import '../domain/searcher_repository.dart';

@Injectable(as: SearcherRepository)
class SearcherNetworkRepository extends SearcherRepository {
  final DioContainer dioContainer;

  SearcherNetworkRepository(this.dioContainer);

  @override
  Future<List<ProductEntity>> search({required String searchText}) async {
    try {
      final response = await dioContainer.dio.get(
        '/catalog',
        queryParameters: {
          "offset": 0,
          "limit": 10,
          "sort": "name",
          "order": "asc",
          "name": searchText,
        },
      );
      final newList = List<ProductEntity>.from(
          response.data['rows'].map((e) => ProductDTO.fromJson(e).toEntity()));
      return newList;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
