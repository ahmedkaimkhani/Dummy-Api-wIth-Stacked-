import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  // static const String baseUrl = "https://jsonplaceholder.typicode.com";
  static const String baseUrl =
      "https://crudcrud.com/api/bb4356c8c5fb4826b730980d02abf1f9";

  Future<List<dynamic>> get(String path) async {
    final response = await http.get(Uri.parse('$baseUrl/$path'));
    if (response.statusCode >= 200 || response.statusCode < 300) {
      print('Api successfully called');
      return json.decode(response.body);
    } else {
      throw Exception('Api Error');
    }
  }
}
