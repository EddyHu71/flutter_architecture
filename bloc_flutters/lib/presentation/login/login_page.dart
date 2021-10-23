import 'package:bloc_flutters/application/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (BuildContext context, LoginState state) {
        state.authFailureOrSuccessOption.fold(() => null, (a) => null);
      },
      builder: (BuildContext context, LoginState state) {
        return Scaffold(
          body : Column(children: [
            
          ],)
        );
    });
  }

}