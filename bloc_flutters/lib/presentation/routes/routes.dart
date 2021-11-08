import 'package:bloc_flutters/presentation/home/view_data/view_data_page.dart';
import 'package:bloc_flutters/application/view_data/view_data_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/model/view_data/datum.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:bloc_flutters/presentation/home/home_page.dart';
import 'package:bloc_flutters/presentation/home/view_data/detail_view_data.dart';
import 'package:bloc_flutters/presentation/login/login_page.dart';
import 'package:bloc_flutters/presentation/login/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Routers {
  static const String splashScreen = "/splashscreen";
  static const String login = "/login";
  static const String mainpage = "/mainpage";
  static const String detailPage = "/detailpage";
  static const String viewData = "/viewData";

  final List<GetPage> routes = [
    GetPage(name: Routers.mainpage, page: () => HomePage()),
    GetPage(
      name: Routers.login,
      page: () => const LoginPage(),
    ),

    GetPage(name: Routers.viewData, 
    page: () => ViewDataPage()),

    GetPage(name: Routers.splashScreen, page: () => SplashScreen()),

    GetPage(name: Routers.detailPage, page: () => DetailViewData(datum: Get.arguments as Datum,))
  ];
}
