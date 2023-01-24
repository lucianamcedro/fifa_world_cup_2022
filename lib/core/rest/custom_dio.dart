import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:fifa_album_flutter/core/config/env/env.dart';
import 'package:fifa_album_flutter/core/rest/interceptors/auth_interceptors.dart';

class CustomDio extends DioForNative {
  final _authInterceptors = AuthInterceptors();
  CustomDio()
      : super(BaseOptions(
          baseUrl: Env.i['backend_base_url'] ?? '',
          connectTimeout: 5000,
          receiveTimeout: 60000,
          contentType: 'application/json',
          followRedirects: false,
          validateStatus: (status) => true,
        )) {
    interceptors.add(LogInterceptor(
        requestBody: true, responseBody: true, requestHeader: true));
  }

  CustomDio auth() {
    interceptors.add(_authInterceptors);
    return this;
  }

  CustomDio unAuth() {
    interceptors.remove(_authInterceptors);
    return this;
  }
}
