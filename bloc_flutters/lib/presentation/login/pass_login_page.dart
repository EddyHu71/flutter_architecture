import 'package:bloc_flutters/application/login/login_controller.dart';
import 'package:bloc_flutters/domain/login/login_objects.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class PassLoginPage extends StatelessWidget {
  PassLoginPage({required Email email, Key? key}) : super(key: key);
  final LoginController loginController = Get.put(getIt<LoginController>());
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Password"),
        ),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      const Expanded(flex: 4, child: SizedBox()),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.4),
                            hintText: "Password",
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.remove_red_eye),
                                onPressed: () {
                                  useState(() {
                                    hidden = !hidden;
                                  });
                                })),
                        obscureText: hidden,
                        onChanged: (value) =>
                            loginController.onPasswordChanged(value),
                        validator: (_) => loginController.getPassword.value
                            .fold(
                                (l) => l.maybeMap(
                                    empty: (_) => "Password Anda kosong",
                                    invalidPassword: (_) =>
                                        "Password anda tidak valid",
                                    orElse: () => null),
                                (r) => null),
                        // onChanged: (value) => context
                        //     .read<LoginBloc>()
                        //     .add(LoginEvent.onPasswordChanged(value)),
                        // validator: (_) => state.email.value.fold(
                        //     (l) => l.maybeMap(
                        //         empty: (_) => "Password anda kosong",
                        //         invalidPassword: (_) =>
                        //             "Password anda tidak valid",
                        //         orElse: () => null),
                        //     (r) => null),
                      ),
                      const Expanded(flex: 1, child: SizedBox()),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Components.button(
                            text: "Login",
                            onPressed: () {
                              print("Login");
                              // Get.off(HomePage());
                              if (loginController.isValid.value == true) {
                                print("Login success");
                                loginController.onLogin();
                              }
                            }),
                      ),
                      const Expanded(flex: 5, child: SizedBox())
                    ],
                  ),
                ))));
  }
}
