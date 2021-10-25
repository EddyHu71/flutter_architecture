import 'package:flutter_dotenv/flutter_dotenv.dart';

class Urls {
  Urls();
  static final String baseUrl = dotenv.get('BASE_URL');
}

class UrlPath {
  UrlPath();
  static const String login = '/api/login';
}
