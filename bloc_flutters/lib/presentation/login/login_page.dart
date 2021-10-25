import 'package:bloc_flutters/application/login/login_bloc.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/core/utils.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<LoginBloc, LoginState>(
        listener: (BuildContext context, LoginState state) {
      state.authFailureOrSuccessOption.fold(() => null, (a) => null);
    }, builder: (BuildContext context, LoginState state) {
      return Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(flex: 4, child: SizedBox()),
            Padding(
                padding: EdgeInsets.only(bottom: 36),
                child: Image.asset(Utils.LOGO)),
            TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Email",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person)),
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.onEmailChanged(value)),
                validator: (context) => state.email.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Email anda kosong",
                        invalidEmail: (_) => "Email anda tidak valid",
                        orElse: () => null),
                    (r) => null)),
            TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Password",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock)),
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.onPasswordChanged(value)),
                validator: (context) => state.email.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Password anda kosong",
                        invalidPassword: (_) => "Password anda tidak valid",
                        orElse: () => null),
                    (r) => null)),
            Expanded(flex: 1, child: SizedBox()),
            Padding(
              padding: EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
              child: Components.button(
                  text: "Login",
                  onPressed: () {
                    context.read<LoginBloc>().add(LoginEvent.signIn());
                    // Get.off(HomePage());
                  }),
            ),
            Expanded(flex: 5, child: SizedBox())
          ],
        ),
      ));
    });
  }
}
