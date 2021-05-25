import 'package:get/get.dart';
import 'package:rest_api_test/api/user_service.dart';
import 'package:rest_api_test/model/user.dart';

class UserController extends GetxController {
  UserService userService = Get.find();

  Future<List<User>> getUsers() {
    return userService.getUsers();
  }
}
