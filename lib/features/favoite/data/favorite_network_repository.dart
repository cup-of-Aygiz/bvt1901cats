import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../../di/service_locator.dart';
import '../../login/data/auth_secure_storage.dart';
import '../../products_catalog/data/dto/product_dto.dart';
import '../domain/favorite_product_repository.dart';

@Injectable(as: FavoriteProductRepository)
class FavoriteNetworkRepository extends FavoriteProductRepository {
  final DioContainer dioContainer;

  FavoriteNetworkRepository(this.dioContainer);

  @override
  Future<List<ProductEntity>> addedProducts(int id) async {
    try {
      final String? token = await getIt<AuthTokenStorage>().loadAccessToken();
      final response = await dioContainer.dio.put('/favorites',
          options: Options(headers: {
            'x-access-token': token,
          }),
          data: {"id": id});
      return List<ProductEntity>.from(
          response.data.map((e) => ProductDTO.fromJson(e).toEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> deleteProducts(int id) async {
    try {
      final String? token = await getIt<AuthTokenStorage>().loadAccessToken();
      final response = await dioContainer.dio.delete('/favorites',
          options: Options(headers: {
            'x-access-token': token,
          }),
          data: {"id": id});
      return List<ProductEntity>.from(
          response.data.map((e) => ProductDTO.fromJson(e).toEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> getProductList() async {
    try {
      final String? token = await getIt<AuthTokenStorage>().loadAccessToken();
      final response = await dioContainer.dio.get(
        '/favorites',
        options: Options(headers: {
          'x-access-token': token,
        }),
      );
      return List<ProductEntity>.from(
          response.data.map((e) => ProductDTO.fromJson(e).toEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
