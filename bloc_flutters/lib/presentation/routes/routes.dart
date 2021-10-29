import 'package:bloc_flutters/application/profile/profile_bloc.dart';
import 'package:bloc_flutters/presentation/home/profile/profile_page.dart';
import 'package:bloc_flutters/presentation/home/view_data/view_data_page.dart';
import 'package:bloc_flutters/application/view_data/view_data_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/model/view_data/datum.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:bloc_flutters/presentation/home/home_page.dart';
import 'package:bloc_flutters/presentation/home/view_data/detail_view_data.dart';
import 'package:bloc_flutters/presentation/login/login_page.dart';
import 'package:bloc_flutters/presentation/onboard/splash_screen.dart';
import 'package:bloc_flutters/presentation/register/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Routers {
  static const String splashScreen = "/splashscreen";
  static const String login = "/login";
  static const String profilepage = "/profilepage";
  static const String mainpage = "/mainpage";
  static const String detailPage = "/detailpage";
  static const String viewData = "/viewData";
  static const String registerpage = "/registerpage";

  final List<GetPage> routes = [
    GetPage(
      name: Routers.mainpage, 
      page: () => HomePage()),
    GetPage(
      name: Routers.login,
      page: () => LoginPage(),
    ),
    GetPage(name: Routers.profilepage, page: () => ProfilePage() ),
    GetPage(name: Routers.viewData, page: () => ViewDataPage()),
    GetPage(name: Routers.splashScreen, page: () => SplashScreen()),
    GetPage(name: Routers.registerpage, page: () => RegisterPage()),
    GetPage(
        name: Routers.detailPage,
        page: () => DetailViewData(
              datum: Get.arguments as Datum,
            ))
  ];
}
