import 'package:bloc_flutters/application/profile/profil_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/home/model/data.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

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
    final firstNameController = TextEditingController(text: profileModel.firstName);
    final lastNameController = TextEditingController(text : profileModel.lastName);
    final emailController = TextEditingController(text: profileModel.email);
    
    return BlocProvider<ProfilBloc>(
      create: (context) => getIt<ProfilBloc>(),
      child : BlocConsumer<ProfilBloc, ProfilState>(
        listener: (BuildContext context, ProfilState state) {
          state.maybeMap(
            loaded: (s) {
              s.optionFailedOrSuccess.match(
                (t) => t.fold((l) => Alerts.logoutAlert(
                  title: "Update Profile failed",
                  subTitle: "Update Profile failed",
                  withCancel: false,
                  onPressed: () {
                    Get.back();
                  }, 
                  onCancelPressed: () {

                  }, 
                  context: context), 
                  (r) => Get.offNamedUntil(Routers.mainpage, (route) => false)), 
                () => null
              );
            },
            orElse: () {}
            );
        },
        builder: (BuildContext context, ProfilState state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Update Profile"),
            ),
            body : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom : 16.0),
                    child: Center(child: Image.network(profileModel.avatar.toString(), fit : BoxFit.fitWidth)),
                  ),
                  Container(
                    child : Row(
                      children: [
                      Expanded(
                          child: TextFormField(
                            controller: firstNameController,
                            decoration: InputDecoration(
                              hintText: "First Name",
                              labelText: "First Name"
                            ),
                          ),
                        ),
                      SizedBox(width : 8),
                      Expanded(
                        child: TextFormField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          hintText: "last Name",
                          labelText: "Last Name"
                        ),
                      ),)
                    ],
                  ),
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email"
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Components.button(
                    useIcon: false,
                    text: "SUBMIT", 
                    onPressed: () {

                  }),
                ],
              ),
            )
          );
      },),
    );
  }

}