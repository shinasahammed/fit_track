// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:frondent/models/account_model.dart';

// class AuthApiService {
//   // CHANGE THIS BASE URL IF NEEDED
//   static const String _baseUrl = "http://192.168.50.196:8000/api";

//   /// ===============================
//   /// LOGIN
//   /// ===============================
//   Future<AuthApiModel> login({
//     required String email,
//     required String password,
//   }) async {
//     final url = Uri.parse("$_baseUrl/login/");

//     final response = await http.post(
//       url,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"email": email, "password": password}),
//     );

//     if (response.statusCode == 200) {
//       return authApiModelFromJson(response.body);
//     } else {
//       final error = jsonDecode(response.body);
//       throw Exception(error['detail'] ?? "Login failed");
//     }
//   }

//   /// ===============================
//   /// REGISTER
//   /// ===============================
//   Future<void> register({
//     required String email,
//     required String fullName,
//     required String password,
//   }) async {
//     final url = Uri.parse("$_baseUrl/register/");

//     final response = await http.post(
//       url,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({
//         "email": email,
//         "full_name": fullName,
//         "password": password,
//       }),
//     );

//     if (response.statusCode != 200 && response.statusCode != 201) {
//       final error = jsonDecode(response.body);
//       throw Exception(error['detail'] ?? "Registration failed");
//     }
//   }
// }
