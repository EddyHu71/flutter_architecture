import 'dart:async';
import 'package:bloc_flutters/application/onboard/onboard_bloc.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/injection.dart';
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
    // useEffect(() {
    //   Timer(Duration(seconds: 3), () async {
    //     var cek = await storageData.readToken();
    //     // var cek = false;
    //     print("Nilai Cek");
    //     print(cek);
    //     if (cek == false) {
    //       Get.offNamed(Routers.login);
    //     } else {
    //       Get.offNamed(Routers.mainpage);
    //     }
    //   });
    // });
    return BlocConsumer<OnboardBloc, OnboardState>(
      listener: (context, state) {
        // TODO: implement listener
        state.authTokenFailOrSuccessOption.match(
          (t) => t.fold(
            (l) => l.maybeMap(
              orElse: () => null,
              invalidToken: (_) {
                
                Get.offNamed(Routers.login);
              }
            ), 
          (r) => Get.offNamed(Routers.mainpage)), 
          () => null);
      },
      builder: (context, state) {
        return Scaffold(
        body: Container(
            child: Center(
              child: Image.asset(Utils.LOGO, fit: BoxFit.fitWidth))));
      },
    );
  }
}
