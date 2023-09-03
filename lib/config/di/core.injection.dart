import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/data/network/api_client.dart';

@module
abstract class CoreInjectionModule {
  @lazySingleton
  Dio get dio => ApiClient.createDefaultDio();
}
