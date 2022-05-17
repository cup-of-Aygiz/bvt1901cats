import 'dart:developer';

import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/features/basket/domain/basket_repository.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../login/domain/entity/dto/product_details_dto.dart';

@Injectable(as: BasketRepository)
class BasketNetworkRepository extends BasketRepository {
  final DioContainer dioContainer;

  BasketNetworkRepository(this.dioContainer);

  @override
  Future<List<ProductEntity>> addInProductList(
      {required int productId, required int amount}) async {
    try {
      dioContainer.dio.options.headers['x-access-token'] =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjUyODA1OTQ1LCJleHAiOjE2NTI4OTIzNDV9.-woAjIs6c9NXjPZ-CT7zdqxC6jRdEKHS8BDFV6mJJ3w';

      final response = await dioContainer.dio.post('/cart', queryParameters: {
        'id': productId,
        'amount': amount,
      });

      final products = List<ProductEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toEntity()));

      return products;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> deleteFromProductList(
      {required int productId}) async {
    try {
      dioContainer.dio.options.headers['x-access-token'] =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjUyODA1OTQ1LCJleHAiOjE2NTI4OTIzNDV9.-woAjIs6c9NXjPZ-CT7zdqxC6jRdEKHS8BDFV6mJJ3w';

      final response = await dioContainer.dio.delete('/cart', queryParameters: {
        'id': productId,
      });

      final products = List<ProductEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toEntity()));

      return products;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> getProductList() async {
    try {
      log('Я тут делаю запрос');
      dioContainer.dio.options.headers['x-access-token'] =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjUyODA1OTQ1LCJleHAiOjE2NTI4OTIzNDV9.-woAjIs6c9NXjPZ-CT7zdqxC6jRdEKHS8BDFV6mJJ3w';
      final response = await dioContainer.dio.get('/cart');

      final products = List<ProductEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toEntity()));

      return products;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> updateProductList(
      {required int productId, required int amount}) async {
    try {
      dioContainer.dio.options.headers['x-access-token'] =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNjUyODA1OTQ1LCJleHAiOjE2NTI4OTIzNDV9.-woAjIs6c9NXjPZ-CT7zdqxC6jRdEKHS8BDFV6mJJ3w';

      final response = await dioContainer.dio.put('/cart', queryParameters: {
        'productId': productId,
        'amount': amount,
      });

      final products = List<ProductEntity>.from(
          response.data.map((e) => ProductDetailsDTO.fromJson(e).toEntity()));

      return products;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
