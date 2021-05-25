import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_test/controller/post_controller.dart';
import 'package:rest_api_test/controller/user_controller.dart';
import 'package:rest_api_test/model/post.dart';
import 'package:rest_api_test/model/user.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserController userController = Get.find();
  PostController postController = Get.find();
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    userController.getUsers().then((value) {
      setState(() {
        users = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'REST API test'.text.make(),
      ),
      // body: ListView.builder(
      //     itemCount: users.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: users[index].name!.text.make(),
      //         // onTap: () =>
      //         //     Get.toNamed(SiteNavigation.USER, arguments: users[index]),
      //       );
      //     }),
      body: Container(
        child: TextButton(
          child: 'post'.text.make(),
          onPressed: () {
            Post post = Post(userId: 1, id: 10, title: 'hihi', body: 'haha');

            postController.createPost(post);
          },
        ),
      ),
    );
  }
}
