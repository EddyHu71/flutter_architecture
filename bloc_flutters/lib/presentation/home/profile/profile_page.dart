import 'package:bloc_flutters/application/profile/profil_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class ProfilePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<ProfilBloc>(
      create: (context) => getIt<ProfilBloc>()..add(ProfilEvent.getProfile()),
      child: BlocConsumer<ProfilBloc, ProfilState>(
          listener: (BuildContext context, ProfilState state) {
            state.maybeMap(
              orElse: () {},
              );
          },
          builder: (BuildContext context, ProfilState state) {
            return SafeArea(
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: state.maybeMap(
                      loaded: (s) {
                        return s.optionFailedOrSuccess.match(
                          (t) => t.fold(
                            (l) => const Center(child : Text("No Data")), 
                            (profile) => Column(
                              children: [
                                Container(
                                  width: Get.width * 0.35,
                                  height: Get.width * 0.35,
                                  child: Image.asset(Utils.PROFILE_PHOTO,
                                      fit: BoxFit.fitWidth),
                                ),
                                Text(profile.data!.email!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16.0)),
                                Text.rich(TextSpan(
                                  text: profile.data?.firstName!.capitalizeFirst ?? "Nama",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                  children: <InlineSpan>[
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: profile.data?.lastName!.capitalizeFirst ?? "Nama",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      )
                                  ])),
                                Card(
                                    child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.person),
                                      title: Text("Profil"),
                                      trailing: Icon(Icons.arrow_forward_ios),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.exit_to_app),
                                      title: Text("Keluar"),
                                      trailing: Icon(Icons.arrow_forward_ios),
                                      onTap: () {
                                        Alerts.logoutAlert(
                                            title: "Logout",
                                            subTitle: "Apakah kamu ingin keluar?",
                                            withCancel: true,
                                            onPressed: () {},
                                            onCancelPressed: () {
                                              Get.back();
                                            },
                                            context: context);
                                      },
                                    )
                                  ],
                                ))
                              ],
                            )), 
                          () => null);
                      },
                      orElse: () {})),
              );
          }),
    );
  }
}
