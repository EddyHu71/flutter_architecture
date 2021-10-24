import 'package:bloc_flutters/application/login/login_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/home/home_page.dart';
import 'package:bloc_flutters/presentation/login/login_page.dart';
import 'package:bloc_flutters/presentation/login/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Routers {
  static final String splashScreen = "/splashscreen";
  static final String login = "/login";
  static final String mainpage = "/mainpage";

  final List<GetPage> routes = [

    GetPage(name: Routers.mainpage, page: () => HomePage()),
    GetPage(
      name: Routers.login, 
      page: () => BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child : LoginPage())
    ),

    GetPage(name: Routers.splashScreen, page: () => SplashScreen()),
  ];
}