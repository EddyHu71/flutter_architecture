import 'package:flutter_dotenv/flutter_dotenv.dart';

class Urls {
  static final String baseUrl = dotenv.get('BASE_URL');
}

class UrlPath {
  static const String login = 'api/login';
  static const String register = "api/register";
  static const String getData = "api/unknown";
  static const String getProfileData = "api/users";
  static const String updateProfile = "";
  // static const String getToken = '/auth/otp';
  // static const String getTokenEmail = '/auth/otp-email';
  // static const String validateToken = '/auth/validate-otp';
  // static const String register = '/auth/register';
}
