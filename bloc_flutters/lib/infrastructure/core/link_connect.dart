import 'package:flutter_dotenv/flutter_dotenv.dart';

class Urls {
  static final String baseUrl = dotenv.get('BASE_URL');
}

class UrlPath {
  static const String login = 'api/login';
  static const String updateProfile = "/api/users/";
  static const String getData = "api/unknown";
  static const String getProfile = "api/users/";
}
