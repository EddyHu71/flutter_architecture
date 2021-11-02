import 'package:bloc_flutters/model/view_data/datum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailViewData extends HookWidget {
  final Datum datum;
  const DetailViewData({Key? key, required this.datum}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Details"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(datum.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24)),
                Text(datum.year.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
          )),
    );
  }
}
