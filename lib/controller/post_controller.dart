import 'package:get/get.dart';
import 'package:rest_api_test/api/post_service.dart';
import 'package:rest_api_test/model/post.dart';

class PostController extends GetxController {
  PostService postService = Get.find();

  Future createPost(Post post) {
    return postService.createPost(post);
  }
}
