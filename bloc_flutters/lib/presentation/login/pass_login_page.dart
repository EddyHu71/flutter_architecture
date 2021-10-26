import 'package:bloc_flutters/application/login/login_bloc.dart';
import 'package:bloc_flutters/domain/register/register_objects.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class PassLoginPage extends StatelessWidget {
  PassLoginPage({required Email email, Key? key}) : super(key : key);
  var hidden = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<LoginBloc>(create: (context) => getIt<LoginBloc>(),
    child : BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
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
                      Get.toNamed(Routers.mainpage);
                    },
                  ),
              () => null);
      },
      builder: (context, state) {
        return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("Password"),
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
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.withOpacity(0.4),
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  prefixIcon: const Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                      icon: const Icon(Icons.remove_red_eye),
                                      onPressed: () async {
                                        useState(() {
                                          hidden = !hidden;
                                        });
                                      })),
                              obscureText: hidden,
                              onChanged: (value) => context
                                  .read<LoginBloc>()
                                  .add(LoginEvent.onPasswordChanged(value)),
                              validator: (_) => state.email.value.fold(
                                  (l) => l.maybeMap(
                                      empty: (_) => "Password anda kosong",
                                      invalidPassword: (_) =>
                                          "Password anda tidak valid",
                                      orElse: () => null),
                                  (r) => null),
                            ),
                            const Expanded(flex: 1, child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Components.button(
                                  text: "Login",
                                  onPressed: () {
                                    context
                                        .read<LoginBloc>()
                                        .add(const LoginEvent.signIn());
                                    print("Login");
                                    // Get.off(HomePage());
                                  }),
                            ),

                            const Expanded(flex: 5, child: SizedBox())
                          ],
                        ),
                      ))));
      },
    )
     );
  }

}