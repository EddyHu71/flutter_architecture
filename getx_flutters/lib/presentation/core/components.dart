import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_flutters/presentation/core/colours.dart';
import 'package:get/get.dart';

class Components {
  static RawMaterialButton button({
    required String text,
    required Function() onPressed,
  }) =>
      RawMaterialButton(
          fillColor: Colours.buttonColor,
          splashColor: Colours.splashButtonColor,
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Icon(Icons.login, size: 28, color: Colours.componentColor),
                SizedBox(width: 8),
                Text(text.toUpperCase(),
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colours.componentColor,
                        fontSize: 16)),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ));

  static Card listData(
          {required String name,
          required VoidCallback? onPressed,
          required String year}) =>
      Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onPressed,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(year)
                ],
              ),
            ),
          ));
}
