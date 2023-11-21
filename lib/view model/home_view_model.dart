import 'package:api_with_stacked/model/post_model.dart';
import 'package:api_with_stacked/repository/post_repository.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  PostRepository postRepository = PostRepository();

  List<PostModel> post = [];

  getPosts() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    post = await postRepository.getPosts();
    setBusy(false);
    rebuildUi();
  }
}
