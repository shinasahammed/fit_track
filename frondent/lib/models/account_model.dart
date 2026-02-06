// import 'dart:convert';

// /// ===============================
// /// JSON HELPERS
// /// ===============================
// AuthApiModel authApiModelFromJson(String str) =>
//     AuthApiModel.fromJson(json.decode(str));

// String authApiModelToJson(AuthApiModel data) =>
//     json.encode(data.toJson());

// /// ===============================
// /// MAIN AUTH RESPONSE MODEL
// /// ===============================
// class AuthApiModel {
//   final String message;
//   final AuthData data;

//   AuthApiModel({
//     required this.message,
//     required this.data,
//   });

//   factory AuthApiModel.fromJson(Map<String, dynamic> json) {
//     return AuthApiModel(
//       message: json['message'] ?? '',
//       data: AuthData.fromJson(json['data']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'message': message,
//       'data': data.toJson(),
//     };
//   }
// }

// /// ===============================
// /// AUTH DATA (TOKENS + USER)
// /// ===============================
// class AuthData {
//   final String access;
//   final String refresh;
//   final AuthUser user;

//   AuthData({
//     required this.access,
//     required this.refresh,
//     required this.user,
//   });

//   factory AuthData.fromJson(Map<String, dynamic> json) {
//     return AuthData(
//       access: json['access'],
//       refresh: json['refresh'],
//       user: AuthUser.fromJson(json['user']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'access': access,
//       'refresh': refresh,
//       'user': user.toJson(),
//     };
//   }
// }

// /// ===============================
// /// AUTH USER MODEL
// /// ===============================
// class AuthUser {
//   final int id;
//   final String email;
//   final String fullName;
//   final String role;

//   AuthUser({
//     required this.id,
//     required this.email,
//     required this.fullName,
//     required this.role,
//   });

//   factory AuthUser.fromJson(Map<String, dynamic> json) {
//     return AuthUser(
//       id: json['id'],
//       email: json['email'],
//       fullName: json['full_name'],
//       role: json['role'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'email': email,
//       'full_name': fullName,
//       'role': role,
//     };
//   }
// }



class UserModel {
  final int id;
  final String email;
  final String fullName;
  final String role;

  UserModel({
    required this.id,
    required this.email,
    required this.fullName,
    required this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      email: json["email"],
      fullName: json["full_name"],
      role: json["role"],
    );
  }
}
