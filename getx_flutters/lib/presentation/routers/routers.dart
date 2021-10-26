import 'package:get/get.dart';
import 'package:getx_flutters/presentation/home/home_page.dart';
import 'package:getx_flutters/presentation/login/login_page.dart';
import 'package:getx_flutters/presentation/login/splash_screen.dart';

class Routers {
  static const String splashScreen = "/splashscreen";
  static const String login = "/login";
  static const String mainpage = "/mainpage";

  final List<GetPage> routes = [
    // GetPage(name: Routers.mainpage, page: page)
    GetPage(name: Routers.login, page: () => LoginPage()),
    GetPage(name: Routers.mainpage, page: () => HomePage()),
    GetPage(name: Routers.splashScreen, page: () => SplashScreen()),
  ];
}