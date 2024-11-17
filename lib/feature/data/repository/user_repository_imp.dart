import 'package:dartz/dartz.dart';
import 'package:parkingclic/feature/data/mapper/user_entity_model_mapper.dart';
import 'package:parkingclic/feature/data/model/user_model.dart';
import 'package:parkingclic/feature/data/service/service_apis.dart';
import 'package:parkingclic/feature/domain/entity/user_entity.dart';
import 'package:parkingclic/feature/domain/repository/user_repository.dart';
import 'package:parkingclic/shared/network/failures.dart';
class UserRepositoryImp extends UserRepository {
  ServiceApis get _serviceApis => ServiceApis(dio, baseUrl: endpoint);

  @override
  Future<Either<Failure, UserEntity>> getUserDetail(int todoId) {
    return safeCall(_serviceApis.serviceUserApi(todoId),
        entityMapper: (UserModel model) => model.toEntity());
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers() {
    try {
      return safeCall(_serviceApis.serviceAllUserApi(),
          entityMapper: (List<UserModel> modelList) =>
              modelList.map((e) => e.toEntity()).toList());
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
