import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/app/data/network_servise/token_interceptor.dart';
import 'package:bvt1901_practice/features/basket/domain/basket_repository.dart';
import 'package:bvt1901_practice/features/product_page/data/dto/product_details_dto.dart';
import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/exceptions/newtwork_error_mapper.dart';

@Injectable(as: BasketRepository)
class BasketNetworkRepository extends BasketRepository {
  final DioContainer dioContainer;

  BasketNetworkRepository(this.dioContainer);

  @override
  Future<List<ProductDetailsEntity>> addInProductList(
      {required int productId, required int amount}) async {
    try {
      final response = await dioContainer.dio.post('/cart',
          queryParameters: {
            'id': productId,
            'amount': amount,
          },
          options: Options(extra: {AuthTokenInterceptor.tag: true}));

      return List<ProductDetailsEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toDetailsEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductDetailsEntity>> deleteFromProductList(
      {required int productId}) async {
    try {
      final response = await dioContainer.dio.delete(
        '/cart',
        queryParameters: {
          'id': productId,
        },
        options: Options(extra: {AuthTokenInterceptor.tag: true}),
      );

      return List<ProductDetailsEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toDetailsEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductDetailsEntity>> getProductList() async {
    try {
      final response = await dioContainer.dio.get(
        '/cart',
        options: Options(extra: {AuthTokenInterceptor.tag: true}),
      );

      return List<ProductDetailsEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toDetailsEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductDetailsEntity>> updateProductList(
      {required int productId, required int amount}) async {
    try {
      final response = await dioContainer.dio.put(
        '/cart',
        queryParameters: {
          'productId': productId,
          'amount': amount,
        },
        options: Options(extra: {AuthTokenInterceptor.tag: true}),
      );

      return List<ProductDetailsEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toDetailsEntity()));
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}