import 'package:flutter/material.dart';
import 'package:rest_api_test/model/user.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class UserProfile extends StatelessWidget {
  User user = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'User profile'.text.make(),
      ),
      body: Column(
        children: <Widget>[
          user.name!.text.make(),
          user.address!.city!.text.make(),
          user.email!.text.make(),
        ],
      ),
    );
  }
}
