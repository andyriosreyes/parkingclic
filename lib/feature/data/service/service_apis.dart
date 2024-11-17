import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:parkingclic/feature/data/model/user_model.dart';
import 'package:parkingclic/feature/domain/entity/user_entity.dart';
import 'package:retrofit/http.dart';
part 'service_apis.g.dart';

@RestApi()
abstract class ServiceApis {
  @factoryMethod
  factory ServiceApis(Dio dio, {@Named("baseURL") String baseUrl}) =
      _ServiceApis;

  @GET("albums/{id}")
  Future<UserModel> serviceUserApi(@Path("id") int id);

  @GET("albums")
  Future<List<UserModel>> serviceAllUserApi();
}
