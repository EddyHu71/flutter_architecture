import 'package:bloc_flutters/application/profile/profil_bloc.dart';
import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/core/components.dart';
import 'package:bloc_flutters/presentation/home/model/data.dart';
import 'package:bloc_flutters/presentation/home/model/profile_model.dart';
import 'package:bloc_flutters/presentation/home/profile/update_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class DetailPage extends HookWidget {
  final Data profileModel;
  DetailPage({
    required this.profileModel,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Center(
                child: Container(
                  width: Get.width * 0.5,
                  // height: Get.width * 0.5,
                  child: Image.network(profileModel.avatar!),
                ),
              ),
            ),
            Text(profileModel.firstName! + " " + profileModel.lastName!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(profileModel.email!),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Components.button(
                  useIcon: false,
                  text: "UPDATE",
                  onPressed: () {
                    print("Update");
                    Get.to(UpdateProfilePage(profileModel: profileModel));
                    
                  }),
            ),
          ],
        ),
      ));
  }
}
