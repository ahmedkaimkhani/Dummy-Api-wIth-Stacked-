import 'package:api_with_stacked/data/api_client.dart';
import 'package:api_with_stacked/data/model/unicorn_model.dart';

class UnicornRepository {
  final _apiClient = ApiClient();

  Future<List<UnicornModel>> getUnicorn() async {
    List<UnicornModel> unicorn = [];
    List<dynamic> postsResponse = await _apiClient.get('unicorns');

    for (var i in postsResponse) {
      unicorn.add(UnicornModel.fromJson(i));
    }
    return unicorn;
  }
}
