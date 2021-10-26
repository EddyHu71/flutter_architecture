import 'package:bloc_flutters/application/register/register_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class RegisterPage extends HookWidget {
  var hidden = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<RegisterBloc>(
      create: (context) => getIt<RegisterBloc>(),
      child : BlocConsumer<RegisterBloc, RegisterState>(
        listener: (BuildContext context, RegisterState state) {
          // TODO: implement listener
          state.authfailureOrSuccessOption.match(
            (t) => t.fold(
              (l) => l.maybeMap(
              orElse: () => null,
              invalidRegister: (_) => {
                Alerts.logoutAlert(
                  title: "Register failed",
                  subTitle: "Your register is invalid",
                  onPressed: () {
                    Get.back();
                }, onCancelPressed: () {

                }, context: context)
              }
              ), 
              (r) => Get.offNamed(Routers.login),
              ), 
            () => null);
        },
        builder: (BuildContext context, RegisterState state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Register"),
            ),
            body : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  autovalidateMode : AutovalidateMode.onUserInteraction,
                  child : Column(
                children: [
                  const Expanded(
                    flex : 4,
                    child : SizedBox()),
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
                      .read<RegisterBloc>()
                      .add(RegisterEvent.onEmailChanged(value)),
                  validator: (_) => state.email.value.fold(
                      (l) => l.maybeMap(
                          empty: (_) => "Email anda kosong",
                          invalidEmail: (_) =>
                              "Email anda tidak valid",
                          orElse: () => null),
                      (r) => null)),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.4),
                        hintText: "Password",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.remove_red_eye),
                          onPressed: () async {
                            useState(() {
                              hidden = !hidden;
                            });
                          }),
                        ),
                    onChanged: (value) => context
                        .read<RegisterBloc>()
                        .add(RegisterEvent.onPasswordChanged(value)),
                    validator: (_) => state.email.value.fold(
                        (l) => l.maybeMap(
                            empty: (_) => "Password anda kosong",
                            invalidPassword: (_) =>
                                "Password anda tidak valid",
                            orElse: () => null),
                        (r) => null)),                   
                        // TextFormField(
                        //   keyboardType: TextInputType.text,
                        //   autovalidateMode:
                        //       AutovalidateMode.onUserInteraction,
                        //   decoration: InputDecoration(
                        //       fillColor: Colors.grey.withOpacity(0.4),
                        //       hintText: "Password",
                        //       border: InputBorder.none,
                        //       prefixIcon: Icon(Icons.lock),
                        //       suffixIcon: IconButton(
                        //         icon: const Icon(Icons.remove_red_eye),
                        //         onPressed: () async {
                        //           useState(() {
                        //             hidden = !hidden;
                        //           });
                        //         }),
                        //       ),
                        //   onChanged: (value) => context
                        //       .read<RegisterBloc>()
                        //       .add(RegisterEvent.onPasswordChanged(value)),
                        //   validator: (_) => state.email.value.fold(
                        //       (l) => l.maybeMap(
                        //           empty: (_) => "Konfirmasi Password anda kosong",
                        //           invalidPassword: (_) =>
                        //               "Konfirmasi Password anda tidak valid",
                        //           orElse: () => null),
                        //       (r) => null)),
                        const Expanded(flex: 1, child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              14.0, 8.0, 14.0, 8.0),
                          child: Components.button(
                              text: "Register",
                              onPressed: () {
                                context
                                    .read<RegisterBloc>()
                                    .add(const RegisterEvent.submitRegister());
                                print("Register");
                                // Get.off(HomePage());
                              }),
                        ),
                  const Expanded(flex: 5, child: SizedBox())
                ],
              )),)
            )
          );
        },
      )
    );
  }
}
