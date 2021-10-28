import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String name;
  final String year;
  final VoidCallback onPressed;
  ListData({
    required this.name,
    required this.year,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
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

}