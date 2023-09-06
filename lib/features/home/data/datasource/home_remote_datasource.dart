import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/network/api_constant.dart';
import '../../../../core/data/util/data_source_util.dart';
import '../model/home_response_model.dart';

abstract class HomeRemoteDataSource {
  Future<HomeResponseModel> getData();
}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl(this.dio);

  @override
  Future<HomeResponseModel> getData() {
    return DataSourceUtil.dioCatchOrThrow(() async {
      Response response = await dio.get(
        ApiConstant.data,
      );
      return HomeResponseModel.fromJson(response.data);
    });
  }
}
