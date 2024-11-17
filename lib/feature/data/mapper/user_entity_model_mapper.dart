import 'package:parkingclic/feature/data/model/user_model.dart';
import 'package:parkingclic/feature/domain/entity/user_entity.dart';

extension UserEntityModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(userId: userId, id: id, title: title);
  }
}
