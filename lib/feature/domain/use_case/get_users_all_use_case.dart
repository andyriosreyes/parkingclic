import 'package:dartz/dartz.dart';
import 'package:parkingclic/feature/domain/entity/user_entity.dart';
import 'package:parkingclic/feature/domain/repository/user_repository.dart';
import 'package:parkingclic/shared/network/failures.dart';
import 'package:parkingclic/shared/use_case/base_use_cases.dart';

class GetUsersAllUseCase extends BaseUseCases<List<UserEntity>, NoParams> {
  final UserRepository _userRepository;

  GetUsersAllUseCase(this._userRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) async {
    final result = await _userRepository.getUsers();
    return result.fold((l) {
      return Left(l);
    }, (r) async {
      return Right(r);
    });
  }
}
