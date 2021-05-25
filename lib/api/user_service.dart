import 'package:dio/dio.dart';
import 'package:rest_api_test/model/user.dart';
import 'package:retrofit/http.dart';

part 'user_service.g.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio) = _UserService;

  @GET("/users")
  Future<List<User>> getUsers();
}
