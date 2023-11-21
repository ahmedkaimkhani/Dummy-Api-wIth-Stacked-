import 'package:api_with_stacked/data/api_client.dart';
import 'package:api_with_stacked/model/post_model.dart';

class PostRepository {
  final _apiClient = ApiClient();

  Future<List<PostModel>> getPosts() async {
    List<PostModel> posts = [];
    List<Map<String, dynamic>> postsResponse = await _apiClient.get();

    for (var i in postsResponse) {
      posts.add(PostModel.fromJson(i));
    }
    return posts;
  }
}