import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = "https://jsonplaceholder.typicode.com/";

  Future<List<Map<String, dynamic>>> get() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode >= 200 || response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('Api Error');
    }
  }
}
