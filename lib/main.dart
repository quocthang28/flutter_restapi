import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_test/api/dio.dart';
import 'package:rest_api_test/api/post_service.dart';
import 'package:rest_api_test/api/user_service.dart';
import 'package:rest_api_test/controller/post_controller.dart';
import 'package:rest_api_test/controller/user_controller.dart';
import 'package:rest_api_test/navigation.dart';
import 'package:rest_api_test/screen/home.dart';
import 'package:rest_api_test/screen/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<DioModule>(() => DioModule(), fenix: true);
        Get.lazyPut<UserService>(() => UserService(Get.find<DioModule>().dio),
            fenix: true);
        Get.lazyPut<UserController>(() => UserController(), fenix: true);
        Get.lazyPut<PostService>(() => PostService(Get.find<DioModule>().dio),
            fenix: true);
        Get.lazyPut<PostController>(() => PostController(), fenix: true);
      }),
      initialRoute: SiteNavigation.HOME,
      getPages: [
        GetPage(name: SiteNavigation.HOME, page: () => HomePage()),
        GetPage(name: SiteNavigation.USER, page: () => UserProfile()),
      ],
    );
  }
}
