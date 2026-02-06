import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const _storage = FlutterSecureStorage();

  static const _access = "ACCESS_TOKEN";
  static const _refresh = "REFRESH_TOKEN";

  static Future<void> save({
    required String access,
    required String refresh,
  }) async {
    await _storage.write(key: _access, value: access);
    await _storage.write(key: _refresh, value: refresh);
  }

  static Future<String?> accessToken() =>
      _storage.read(key: _access);

  static Future<String?> refreshToken() =>
      _storage.read(key: _refresh);

  static Future<void> clear() => _storage.deleteAll();
}
