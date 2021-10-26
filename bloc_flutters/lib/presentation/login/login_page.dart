import 'package:bloc_flutters/application/login/login_controller.dart';
import 'package:bloc_flutters/domain/login/login_objects.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/core/utils.dart';
import 'package:bloc_flutters/presentation/home/home_page.dart';
import 'package:bloc_flutters/presentation/login/pass_login_page.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LoginController loginController = Get.put(getIt<LoginController>());
  @override
  Widget build(BuildContext context) {
    var hidden = true;
    // TODO: implement build
          return Scaffold(
              body: SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            const Expanded(flex: 4, child: SizedBox()),
                            Padding(
                                padding: EdgeInsets.only(bottom: 36),
                                child: Image.asset(Utils.LOGO)),
                            TextFormField(
                                keyboardType: TextInputType.text,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.withOpacity(0.4),
                                    hintText: "Email",
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.person)),
                                onChanged: (value) => loginController.onEmailChanged(value),
                                validator: (_) => loginController.getEmail.value.fold(
                                  (l) => l.maybeMap(
                                    empty: (_) => "Email Anda kosong",
                                    invalidEmail: (_) => "Email Anda tidak valid",
                                    orElse: () => null), 
                                    (r) => null
                                    ),
                                // onChanged: (value) => context
                                //     .read<LoginBloc>()
                                //     .add(LoginEvent.onEmailChanged(value)),
                                // validator: (_) => state.email.value.fold(
                                //     (l) => l.maybeMap(
                                //         empty: (_) => "Email anda kosong",
                                //         invalidEmail: (_) =>
                                //             "Email anda tidak valid",
                                //         orElse: () => null),
                                //     (r) => null)),
                            ),
                            const Expanded(flex: 1, child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Components.button(
                                  text: "Login",
                                  onPressed: () {
                                    if (loginController.isEmailValid.value == true) {
                                      Get.to(PassLoginPage(email: Email(loginController.email.value.getOrCrash())));
                                    }
                                    print("State Email");
                                    // Get.to(PassLoginPage());
                                    // context
                                    //     .read<LoginBloc>()
                                    //     .add(const LoginEvent.signIn());
                                    debugPrint("Login");
                                    // Get.off(HomePage());
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Components.button(
                                  text: "Register",
                                  onPressed: () {
                                    Get.toNamed(Routers.registerpage);
                                    print("Register");
                                    // Get.off(HomePage());
                                  }),
                            ),
                            const Expanded(flex: 5, child: SizedBox())
                          ],
                        ),
                      ))));
  }
}
