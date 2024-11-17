import 'package:dartz/dartz.dart';
import 'package:parkingclic/feature/domain/entity/user_entity.dart';
import 'package:parkingclic/shared/network/base_repository.dart';
import 'package:parkingclic/shared/network/failures.dart';

abstract class UserRepository extends BaseRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers();
  Future<Either<Failure, UserEntity>> getUserDetail(int todoId);
}
