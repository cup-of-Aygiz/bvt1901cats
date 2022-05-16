import 'package:dio/dio.dart';

class AuthTokenInterceptor extends Interceptor {
  AuthTokenInterceptor(this.accessToken);

  static const tag = 'AuthTokenInterceptor';

  final String accessToken;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra[tag] == true) {
      options.headers['Authorization'] = accessToken;
    }
    super.onRequest(options, handler);
  }
}
