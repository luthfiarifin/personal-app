import 'package:injectable/injectable.dart';

import '../../../../core/data/network/api_client.dart';
import '../../../../core/data/network/api_constant.dart';
import '../model/home_response_model.dart';

abstract class HomeRemoteDataSource {
  Future<HomeResponseModel> getData();
}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiClient apiClient;

  const HomeRemoteDataSourceImpl(
    this.apiClient,
  );

  @override
  Future<HomeResponseModel> getData() {
    return apiClient.get(
      ApiConstant.data,
      converter: (e) => HomeResponseModel.fromJson(e),
    );
  }
}
