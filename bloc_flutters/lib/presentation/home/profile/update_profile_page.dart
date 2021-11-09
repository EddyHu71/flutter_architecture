import 'package:bloc_flutters/application/profile/profil_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/home/model/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UpdateProfilePage extends HookWidget {
  final Data profileModel;
  UpdateProfilePage(
    {
      required this.profileModel,
    }
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<ProfilBloc>(
      create: (context) => getIt<ProfilBloc>(),
      child : BlocConsumer<ProfilBloc, ProfilState>(
        listener: (BuildContext context, ProfilState state) {

        },
        builder: (BuildContext context, ProfilState state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Update Profile"),
            ),
            body : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [

              ],
            )
          );
      },),
    );
  }

}