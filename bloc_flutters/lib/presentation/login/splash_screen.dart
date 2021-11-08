import 'dart:async';
import 'package:bloc_flutters/application/auth/auth_bloc.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/utils.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<AuthBloc>(
      create: (context) => 
      getIt<AuthBloc>()..add(const AuthEvent.authToken()), 
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          state.maybeMap(
            orElse: () {
              return Center(child: Image.asset(Utils.LOGO, fit: BoxFit.fitWidth));
            },
            loaded: (s) {
              s.optionFailedOrSuccess.match(
              (t) => t.fold(
                (l) => Center(child : CircularProgressIndicator()), 
                (r) => Center(child : CircularProgressIndicator()),
                ),
              () => Center(child: Image.asset(Utils.LOGO, fit: BoxFit.fitWidth)));
            }
            );
        },
        builder: (BuildContext context, AuthState state) {
          return Scaffold(
        body: state.maybeMap(
          loaded: (s) {
            print(s);
            s.optionFailedOrSuccess.match(
              (t) => t.fold(
                (l) => Get.offNamedUntil(Routers.login, (route) => false), 
                (r) => Get.offNamedUntil(Routers.mainpage, (route) => false)
                ),
              () => Center(child: Image.asset(Utils.LOGO, fit: BoxFit.fitWidth)));
          },
          orElse: () {
            return Center(child: Image.asset(Utils.LOGO, fit: BoxFit.fitWidth));
          }
          ));
      },));
  }
}
