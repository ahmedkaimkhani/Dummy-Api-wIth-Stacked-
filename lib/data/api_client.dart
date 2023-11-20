import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = "https://jsonplaceholder.typicode.com/";

  get() async {
    http.Response response = await http.get(Uri.parse(baseUrl));
  }
}
