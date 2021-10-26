import 'package:getx_flutters/application/login/login_controller.dart';
import 'package:getx_flutters/injection.dart';
import 'package:getx_flutters/presentation/core/alerts.dart';
import 'package:getx_flutters/presentation/core/components.dart';
import 'package:getx_flutters/presentation/core/utils.dart';
import 'package:getx_flutters/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:getx_flutters/presentation/routers/routers.dart';

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
                                validator: (context) => 
                              loginController.getEmail.value.fold(
                                (l) => l.maybeMap(
                                  orElse: () => null,
                                  invalidPassword : (_) => "Email anda tidak valid",
                                  empty: (_) => "Email Anda Kosong",
                                   ) , 
                                (r) => null
                              ),
                              onChanged: (value) => loginController.onEmailChanged(value),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.withOpacity(0.4),
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  prefixIcon: const Icon(Icons.lock),
                                  // suffixIcon: IconButton(
                                  //     icon: const Icon(Icons.remove_red_eye),
                                  //     onPressed: () async {
                                  //       useState(() {
                                  //         hidden = !hidden;
                                  //       });
                                  //     })),
                              ),
                              validator: (context) => 
                              loginController.getPassword.value.fold(
                                (l) => l.maybeMap(
                                  orElse: () => null,
                                  invalidPassword : (_) => "Password anda tidak valid",
                                  empty: (_) => "Password Anda Kosong",
                                   ) , 
                                (r) => null
                              ),
                              onChanged: (value) => loginController.onPasswordChanged(value),
                              obscureText: hidden,
                            ),
                            const Expanded(flex: 1, child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Components.button(
                                  text: "Login",
                                  onPressed: () {
                                    if (loginController.isValid.value == true) {
                                      loginController.onLogin();
                                    }
                                    
                                  }
                                  ),
                            ),
                            const Expanded(flex: 5, child: SizedBox())
                          ],
                        ),
                      ))));
  }
}
