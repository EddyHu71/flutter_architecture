import 'package:bloc_flutters/application/profile/profile_bloc.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/alerts.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class ProfilePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            getIt<ProfileBloc>()..add(ProfileEvent.getDataProfile()),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            // TODO: implement listener
            state.maybeMap(
                orElse: () => null,
                loaded: (s) {
                  s.optionFailedOrSuccess.match(
                      (t) => t.fold(
                          (l) => l.maybeMap(
                                orElse: () => null,
                                noData: (_) {
                                  storageData.deleteAll();
                                  Get.offNamedUntil(
                                      Routers.login, (route) => false);
                                },
                                noInternet: (_) {
                                  Get.dialog(AlertDialog(
                                    title: Text("No Internet"),
                                    content: Icon(Icons.wifi),
                                    actions: [
                                      FlatButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: const Text("OK"))
                                    ],
                                  ));
                                },
                              ),
                          (r) => null),
                      () => null);
                });
          },
          builder: (context, state) {
            return SafeArea(
              child: state.maybeMap(
                  orElse: () => Center(child: CircularProgressIndicator()),
                  loaded: (s) {
                    return s.optionFailedOrSuccess.match(
                      (t) => t.fold(
                          (l) => Container(
                                margin: EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                  right: 8.0,
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.wifi),
                                    Text("No Connection")
                                  ],
                                ),
                              ), (data) {
                        return Container(
                            child: Column(
                          children: [
                            Image.network(data.data!.avatar!, width: 225),
                            Text(data.data!.firstName!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24)),
                            Text(data.data!.lastName!,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            ListTile(
                              leading: Icon(Icons.exit_to_app),
                              title: Text("Logout"),
                              onTap: () {
                                Alerts.logoutAlert(
                                    title: "Logout",
                                    subTitle: "Apakah kamu ingin logout?",
                                    withCancel: true,
                                    onPressed: () {
                                      storageData.deleteAll();
                                      Get.offNamedUntil(
                                          Routers.login, (route) => false);
                                    },
                                    onCancelPressed: () {
                                      Get.back();
                                    },
                                    context: context);
                              },
                            )
                          ],
                        ));
                      }),
                      () => Container(
                        margin: EdgeInsets.only(
                          top: 8.0,
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Column(
                          children: [Icon(Icons.wifi), Text("No Connection")],
                        ),
                      ),
                    );
                  }),
            );
          },
        ));
  }
}
