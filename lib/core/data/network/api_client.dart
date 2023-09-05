import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter/foundation.dart';

class ApiClient {
  static Dio createDefaultDio({
    String baseUrl = 'https://api.laam.my.id/',
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio()
      ..options = BaseOptions(
        sendTimeout: const Duration(milliseconds: 30000),
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 10000),
        baseUrl: baseUrl,
        headers: {
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'cors-site',
        },
      )
      ..interceptors.addAll([
        if (kDebugMode) HttpFormatter(),
        ...interceptors,
      ]);

    return dio;
  }
}
