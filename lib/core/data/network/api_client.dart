import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter/foundation.dart';
import 'package:personal_app/core/data/util/data_source_util.dart';
import 'package:personal_app/core/data/util/isolate_parser.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class ApiClient {
  late Dio _dio;

  ApiClient() {
    _dio = _createDefaultDio();
  }

  Dio _createDefaultDio({
    String baseUrl = 'https://api.laam.my.id/',
    List<Interceptor> interceptors = const [],
    Map<String, dynamic>? headers = const {
      'Sec-Fetch-Mode': 'cors',
      'Sec-Fetch-Site': 'cors-site',
    },
  }) {
    final dio = Dio()
      ..options = BaseOptions(
        sendTimeout: const Duration(seconds: 3),
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 10),
        baseUrl: baseUrl,
        headers: headers,
      )
      ..interceptors.addAll([
        if (kDebugMode) HttpFormatter(),
        ...interceptors,
      ]);

    return dio;
  }

  Future<T> get<T>(
    String url, {
    required ResponseConverter<T> converter,
    Map<String, dynamic>? queryParameters,
    bool newIsolate = true,
  }) async {
    return DataSourceUtil.dioCatchOrThrow(() async {
      Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
      );

      if (!newIsolate) {
        return converter(response.data);
      }

      final isolateParse = IsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      return await isolateParse.parseInBackground();
    });
  }

  Future<T> post<T>(
    String url, {
    required Map<String, dynamic>? data,
    required ResponseConverter<T> converter,
    bool newIsolate = true,
  }) async {
    return DataSourceUtil.dioCatchOrThrow(() async {
      Response response = await _dio.post(
        url,
        data: data,
      );

      if (!newIsolate) {
        return converter(response.data);
      }

      final isolateParse = IsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      return await isolateParse.parseInBackground();
    });
  }
}
