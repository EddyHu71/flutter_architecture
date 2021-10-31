import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:bloc_flutters/domain/login/login_objects.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/infrastructure/login/login_repository.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:bloc_flutters/presentation/login/pass_login_page.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

@injectable
class LoginController extends GetxController {
  Rx<Email> email = Email('').obs;
  Rx<Password> password = Password('').obs;

  Rx<bool> isValid = false.obs;
  Rx<bool> isEmailValid = false.obs;
  Rx<bool> isLoading = false.obs;

  final ILoginRepository iLoginRepository;

  LoginController(this.iLoginRepository);

  Email get getEmail => email.value;
  Password get getPassword => password.value;
 
  void onEmailChanged(String input) {
    email.value = Email(input);
    isEmvailValidated();
    validated();
  }

  void onPasswordChanged(String input) {
    password.value = Password(input);
    validated();
  }

  void validated() {
    isValid.value = email.value.isValid() && password.value.isValid();
  }

  void isEmvailValidated() {
    isEmailValid.value = email.value.isValid();
  }

  Future<void> onLogin() async {
    isLoading.value = true;
    print("onLogin");
    var res = await iLoginRepository.login(
        email.value.getOrCrash(), password.value.getOrCrash());
    isLoading.value = false;
    print(res);
    res.match(
      (l) {
      print("Left");
      Get.defaultDialog(
        title: 'Login Failed',
        middleText: 'Login Failed',
        onConfirm: () async {
          Get.back();
        },
      );
    }, (r) {
      // Map<String, dynamic> jsons = res as Map<String, dynamic>;
      
      print("Login controller success");
      // print(r.token);
      // storageData.writeToken(r.token??"");
      
      Get.offNamedUntil(Routers.mainpage, (route) => false);
    });
  }
}
