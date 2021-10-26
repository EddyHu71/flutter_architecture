import 'package:bloc_flutters/application/login/login_bloc.dart';
import 'package:bloc_flutters/domain/register/register_objects.dart';
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
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var hidden = true;
    // TODO: implement build
    return BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child: BlocConsumer<LoginBloc, LoginState>(
            listener: (BuildContext context, LoginState state) {
          state.authFailureOrSuccessOption.match(
              (t) => t.fold(
                    (l) => l.maybeMap(
                      orElse: () => null,
                      invalidLogin: (_) => {
                        Alerts.logoutAlert(
                            title: "Login failed",
                            subTitle: "Your login is invalid",
                            onPressed: () {
                              Get.back();
                            },
                            onCancelPressed: () {},
                            context: context)
                      },
                    ),
                    (r) {
                      print('right');
                      print(state.email.value.toString());
                      Get.to(PassLoginPage(
                        email : Email(state.email.value.toString()),
                      ));
                      //Get.toNamed(Routers.mainpage);
                    },
                  ),
              () => null);
        }, builder: (BuildContext context, LoginState state) {
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
                                onChanged: (value) => context
                                    .read<LoginBloc>()
                                    .add(LoginEvent.onEmailChanged(value)),
                                validator: (_) => state.email.value.fold(
                                    (l) => l.maybeMap(
                                        empty: (_) => "Email anda kosong",
                                        invalidEmail: (_) =>
                                            "Email anda tidak valid",
                                        orElse: () => null),
                                    (r) => null)),
                            const Expanded(flex: 1, child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Components.button(
                                  text: "Login",
                                  onPressed: () {
                                    print("State Email");
                                    print(state.email.value.toString());
                                    context.read<LoginBloc>().add(LoginEvent.validatedEmail(state.email.value.toString()));
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
        }));
  }
}
