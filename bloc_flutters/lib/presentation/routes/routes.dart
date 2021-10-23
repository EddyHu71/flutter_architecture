import 'package:bloc_flutters/application/login/bloc/login_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/login/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Routers {
  static final String splashScreen = "/splashscreen";
  static final String login = "/login";
  static final String register = "/register";
  static final String mainpage = "/mainpage";

  final List<GetPage> routes = [
    GetPage(
      name: Routers.login, 
      page: () => BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child : LoginPage())
    ),
  ];
}