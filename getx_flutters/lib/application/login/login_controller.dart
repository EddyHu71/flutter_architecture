import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutters/domain/login/i_login_repository.dart';
import 'package:getx_flutters/domain/login/login_objects.dart';
import 'package:getx_flutters/presentation/core/alerts.dart';
import 'package:getx_flutters/presentation/routers/routers.dart';
import 'package:injectable/injectable.dart';

@injectable 
class LoginController extends GetxController {
  Rx<Email> email = Email('').obs;
  Rx<Password> password = Password('').obs;

  Rx<bool> isValid = false.obs;
  Rx<bool> isLoading = false.obs;
  
  final ILoginRepository iLoginRepository;
  LoginController(this.iLoginRepository);

  Email get getEmail => email.value;
  Password get getPassword => password.value;

  void onEmailChanged(String input) {
    email.value = Email(input);
    validated();
  }

  void onPasswordChanged(String input) {
    password.value = Password(input);
    validated();
  }

  void validated() {
    print("Validated");
    isValid.value = email.value.isValid() && password.value.isValid();
  }

  Future<void> onLogin() async {
    isLoading.value = true;
    print("onLogin");

    final res = await iLoginRepository.login(
      email.value.getOrCrash(), 
      password.value.getOrCrash()
    );

    res.match((l) => Get.defaultDialog(
        title: 'Login failed',
        middleText: 'Login Failed',
        onConfirm: () async {
        Get.back();
        }),(r) {
          debugPrint("Login success");
          Get.offNamed(Routers.mainpage);
        }
      );
      isLoading.value = false;
  }
}