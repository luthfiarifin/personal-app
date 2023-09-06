import 'package:dio/dio.dart';

import '../error/exceptions.dart';

class DataSourceUtil {
  static Future<T> dioCatchOrThrow<T>(Future<T> Function() body) async {
    try {
      return await body();
    } on DioException catch (e) {
      throw RemoteException(message: e.response?.statusMessage);
    } catch (e) {
      throw RemoteException(message: 'Something went wrong!');
    }
  }
}
