import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/features/product_page/data/dto/product_details_dto.dart';
import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';
import 'package:bvt1901_practice/features/product_page/domain/product_details_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/exceptions/newtwork_error_mapper.dart';

@Injectable(as: ProductDetailsRepository)
class ProductDetailsNetworkRepository extends ProductDetailsRepository {
  final DioContainer dioContainer;

  ProductDetailsNetworkRepository(this.dioContainer);

  @override
  Future<ProductDetailsEntity> getProductDetails({
    required int id,
  }) async {
    try {
      final response = await dioContainer.dio.get(
        '/product',
        queryParameters: {
          'id': id,
        },
      );

      final product = ProductDetailsDTO.fromJson(response.data).toEntity();

      return product;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
