import 'dart:convert';
import 'package:frondent/services/config.dart';
import 'package:http/http.dart' as http;

import '../storage/token_storage.dart';

class ApiClient {
  static Future<http.Response> post(
    String path,
    Map<String, dynamic> body,
  ) {
    return http.post(
      Uri.parse(AppConfig.baseUrl + path),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );
  }

  static Future<http.Response> get(String path) async {
    final token = await TokenStorage.accessToken();

    return http.get(
      Uri.parse(AppConfig.baseUrl + path),
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      },
    );
  }
}
