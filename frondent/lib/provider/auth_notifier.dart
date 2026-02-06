import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:frondent/models/account_model.dart';
import 'package:frondent/services/auth_api.dart';

import '../models/login_response.dart';

import '../storage/token_storage.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<UserModel?>>(
  (ref) => AuthNotifier(),
);

class AuthNotifier extends StateNotifier<AsyncValue<UserModel?>> {
  AuthNotifier() : super(const AsyncValue.data(null));

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final response = await AuthApi.login(email, password);
      final result =
          LoginResponse.fromJson(jsonDecode(response.body));

      await TokenStorage.save(
        access: result.access,
        refresh: result.refresh,
      );

      state = AsyncValue.data(result.user);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> loadProfile() async {
    try {
      final response = await AuthApi.profile();
      state = AsyncValue.data(
        UserModel.fromJson(jsonDecode(response.body)),
      );
    } catch (_) {
      state = const AsyncValue.data(null);
    }
  }

  Future<void> logout() async {
    await TokenStorage.clear();
    state = const AsyncValue.data(null);
  }
}
