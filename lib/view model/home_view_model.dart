import 'package:api_with_stacked/data/model/post_model.dart';
import 'package:api_with_stacked/data/model/unicorn_model.dart';
import 'package:api_with_stacked/repository/post_repository.dart';
import 'package:api_with_stacked/repository/unicorn_repository.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  PostRepository postRepository = PostRepository();
  UnicornRepository unicornRepository = UnicornRepository();

  List<PostModel> post = [];
  List<UnicornModel> unicorn = [];

  getPosts() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    post = await postRepository.getPosts();
    setBusy(false);
    rebuildUi();
  }

  getUnicorns() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    unicorn = await unicornRepository.getUnicorn();
    setBusy(false);
    rebuildUi();
  }
}
