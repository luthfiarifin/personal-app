import 'package:injectable/injectable.dart';

import '../../core/data/network/api_client.dart';

@module
abstract class CoreInjectionModule {
  @lazySingleton
  ApiClient get apiClient => ApiClient();
}
