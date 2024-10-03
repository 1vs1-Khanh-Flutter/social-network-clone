import 'package:flutter/material.dart';

AppBar header(
  context, {
  bool isCenter = true,
  required String headerTitle,
  Color? headerTitleColor,
  double headerTitleSize = 13,
  String? headerTitleFontFamily,
}) {
  return AppBar(
    title: Text(
      headerTitle,
      style: TextStyle(
        color: headerTitleColor ?? Colors.black,
        fontSize: headerTitleSize,
        fontFamily: headerTitleFontFamily,
      ),
    ),
    centerTitle: isCenter,
    backgroundColor: Theme.of(context).canvasColor,
  );
}
