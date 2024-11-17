import 'package:parkingclic/feature/data/model/user_model.dart';
import 'package:parkingclic/feature/domain/entity/user_entity.dart';

extension EntityModelMapper on UserEntity {
  UserModel toModel() {
    return UserModel(userId: userId, id: id, title: title);
  }
}
