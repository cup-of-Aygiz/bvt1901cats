import 'package:bvt1901_practice/features/orders/domain/entity/order_entity.dart';
import 'package:bvt1901_practice/features/orders/domain/orders_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../app/data/network_servise/dio_container.dart';
import '../../../di/service_locator.dart';
import '../../login/data/auth_secure_storage.dart';
import 'dto/order_dto.dart';

@Injectable(as: OrderRepository)
class NetworkOrdersRepository extends OrderRepository {

  final DioContainer dioContainer;

  NetworkOrdersRepository(this.dioContainer);

  @override
  Future<List<OrderEntity>> addOrders() {
    // TODO: implement addOrders
    throw UnimplementedError();
  }

  @override
  Future<List<OrderEntity>> getOrders() async {
    try{

      final String? token = await getIt<AuthTokenStorage>().loadAccessToken();
      final response = await dioContainer.dio.get(
        '/orders',
          options: Options(headers: {
            'x-access-token': token,
          }),
      );

      return List<OrderEntity>.from(response.data
          .map((e) => OrderDTO.fromJson(e).toEntity()));

    }catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
