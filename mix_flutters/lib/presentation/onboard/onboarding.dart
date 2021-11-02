import 'package:bloc_flutters/presentation/core/utils.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
        children: [
          Expanded(
            flex : 6,
            child : Image.asset(Utils.LOGO, fit : BoxFit.fitWidth,),
            ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
            children: [],),)
        ],
        ),
      ),
    );
  }
}