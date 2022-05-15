import 'dart:io';

import 'package:bvt1901_practice/app/presentation/app_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'network_error.dart';

@LazySingleton()
class DioContainer {
  DioContainer(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
      receiveTimeout: 7000,
    );
    dio = Dio(options);
    dio.options.headers["x-access-token"]="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjUyNTQ4MDM5LCJleHAiOjE2NTI2MzQ0Mzl9.T_v381TdU0LlZ_ETq-eHfqszDln8Hi9n_ttTb5WRJlY";
    addInterceptor(NetworkErrorInterceptor());
  }

  late final Dio dio;

  void addInterceptor(Interceptor interceptor) {
    deleteInterceptor(interceptor.runtimeType);
    dio.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type interceptorType) {
    dio.interceptors
        .removeWhere((element) => element.runtimeType == interceptorType);
  }
}

class NetworkErrorInterceptor extends Interceptor {
  @override
  void onError(
      DioError err,
      ErrorInterceptorHandler handler,
      ) async {
    NetworkError networkError;

    if (err is SocketException) {
      networkError = const NetworkError.noConnection();
    } else {
      if (err.response?.statusCode == 401) {
        // TODO подумать как обновить
        /// обновление токена но только один раз через Completer
        /// Повтор запроса после обновлениея
        /// getIt<DioContainer>().dio.request(err.requestOptions.path,options: err.requestOptions.data);
      }
      networkError = NetworkError.request(error: err);
    }
    err.error = networkError;
    handler.reject(err);
  }
}
