import 'package:bloc_flutters/presentation/core/colours.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  Buttons(
    {
      required this.onPressed,
      required this.text,
    }
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
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
  }

}
