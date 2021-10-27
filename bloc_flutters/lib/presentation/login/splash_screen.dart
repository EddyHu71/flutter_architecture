import 'dart:async';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/presentation/core/utils.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    useEffect(() {
      Timer(Duration(seconds: 3), () async {
        var cek = await storageData.readToken();
        // var cek = false;
        print("Nilai Cek");
        print(cek);
        if (cek == false) {
          Get.offNamed(Routers.login);
        } else {
          Get.offNamed(Routers.mainpage);
        }
      });
    });
    return Scaffold(
        body: Container(
            child:
                Center(child: Image.asset(Utils.LOGO, fit: BoxFit.fitWidth))));
  }
}
