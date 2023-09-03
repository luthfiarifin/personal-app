import 'package:dartz/dartz.dart';

import '../../../../core/data/error/failures.dart';
import '../../data/model/home_response_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeResponseModel>> getData();
}
