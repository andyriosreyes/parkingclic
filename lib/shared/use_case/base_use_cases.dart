import 'package:dartz/dartz.dart';
import 'package:parkingclic/shared/network/failures.dart';

abstract class BaseUseCases<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}
