import 'dart:developer';

import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../app/data/network_servise/dio_container.dart';
import '../domain/favorite_product_repository.dart';
import 'dto/favorite_dto.dart';

@Injectable(as: FavoriteProductRepository)
class FavoriteNetworkRepository extends FavoriteProductRepository {
  final DioContainer dioContainer;

  FavoriteNetworkRepository(this.dioContainer);

  @override
  Future<List<ProductEntity>> getProductList() async {
    try {
      final response = await dioContainer.dio.get('/favorites');
      final newList = List<ProductEntity>.from(
          response.data.map((e) => FavoriteDTO.fromJson(e).toEntity()));
      return newList;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> addProduct({required int id}) async{
    try{
      final response= await dioContainer.dio.put('/favorites',data: {'id': id});

      log('${response.statusCode}');

      final newList = List<ProductEntity>.from(
          response.data.map((e) => FavoriteDTO.fromJson(e).toEntity()));
      return newList;
    }
    catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<List<ProductEntity>> deleteProduct({required int id}) async{
    try{
      final response= await dioContainer.dio.delete('/favorites',data: {'id': id});

      final newList = List<ProductEntity>.from(
          response.data.map((e) => FavoriteDTO.fromJson(e).toEntity()));
      return newList;
    }
    catch (e) {
      throw mapToErrorModel(e);
    }
  }
  

}