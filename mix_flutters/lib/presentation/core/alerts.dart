import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Alerts {
  static Future<void> logoutAlert(
      {String key = "dialogalert",
      required VoidCallback? onPressed,
      required VoidCallback? onCancelPressed,
      required BuildContext context,
      bool withCancel = false,
      String? title,
      String? subTitle,
      String yesText = "Yes",
      String noText = "No"}) async {
    List<Widget> buttons = [];
    if (withCancel) {
      buttons.add(TextButton(
          onPressed: () {
            onCancelPressed?.call();
            Get.back();
          },
          child: Text(noText)));
    }

    buttons.add(TextButton(
        onPressed: () {
          onPressed?.call();
        },
        child: Text(yesText)));
    return Get.dialog(
        AlertDialog(
          title: title != null ? Text(title) : null,
          content: subTitle != null ? Text(subTitle) : null,
          actions: buttons,
        ),
        barrierDismissible: false);
  }
}
