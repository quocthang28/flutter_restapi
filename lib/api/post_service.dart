import 'package:dio/dio.dart';
import 'package:rest_api_test/model/post.dart';
import 'package:retrofit/http.dart';

part 'post_service.g.dart';

@RestApi()
abstract class PostService {
  factory PostService(Dio dio) = _PostService;

  @POST("/posts")
  Future<Post> createPost(@Body() Post post);
}
