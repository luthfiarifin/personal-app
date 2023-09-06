import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/failures.dart';
import '../../../../core/domain/usecase.dart';
import '../../data/model/home_response_model.dart';
import '../repository/home_repository.dart';

@lazySingleton
class GetHomeDataUseCase implements UseCase<HomeResponseModel, NoParams> {
  final HomeRepository repository;

  GetHomeDataUseCase(this.repository);

  @override
  Future<Either<Failure, HomeResponseModel>> call(NoParams params) {
    return repository.getData();
  }
}
