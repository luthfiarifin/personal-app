import 'package:dartz/dartz.dart';

import '../error/exceptions.dart';
import '../error/failures.dart';

class RepositoryUtil {
  static Future<Either<Failure, T>> catchOrThrow<T>({
    required Future<T> Function() body,
    Future Function(Object e)? error,
  }) async {
    try {
      return Right(await body());
    } on BaseException catch (e) {
      if (error != null) await error(e);
      return Left(Failure(message: e.message ?? 'Something went wrong!'));
    } catch (e) {
      if (error != null) await error(e);
      return const Left(Failure(message: 'Something went wrong!'));
    }
  }
}
