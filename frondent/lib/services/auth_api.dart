import 'package:frondent/services/config.dart';

import 'api_client.dart';


class AuthApi {
  static login(String email, String password) {
    return ApiClient.post(
      AppConfig.login,
      {
        "email": email,
        "password": password,
      },
    );
  }

  static refresh(String refreshToken) {
    return ApiClient.post(
      AppConfig.refresh,
      {"refresh": refreshToken},
    );
  }

  static profile() {
    return ApiClient.get(AppConfig.profile);
  }
}
