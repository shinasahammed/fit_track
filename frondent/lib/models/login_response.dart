import 'package:frondent/models/account_model.dart';



class LoginResponse {
  final String access;
  final String refresh;
  final UserModel user;

  LoginResponse({
    required this.access,
    required this.refresh,
    required this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    final data = json["data"];
    return LoginResponse(
      access: data["access"],
      refresh: data["refresh"],
      user: UserModel.fromJson(data["user"]),
    );
  }
}
