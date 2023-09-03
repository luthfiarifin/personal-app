import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/failures.dart';
import '../../../../core/data/util/repository_util.dart';
import '../../domain/repository/home_repository.dart';
import '../datasource/home_remote_datasource.dart';
import '../model/home_response_model.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  const HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, HomeResponseModel>> getData() async {
    return RepositoryUtil.catchOrThrow(body: () async {
      return await remoteDataSource.getData();
    });
  }
}
