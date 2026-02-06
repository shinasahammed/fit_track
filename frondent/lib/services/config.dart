class AppConfig {
  static const baseUrl = String.fromEnvironment(
    'API_URL',
    defaultValue: "http://192.168.50.196:8000/api",
  );

  static const login = "/login/";
  static const refresh = "/refresh/";
  static const profile = "/profile/";
}
