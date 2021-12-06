import 'package:flutter/material.dart';
import 'package:we_exspend/main.dart';
import 'package:we_exspend/utils/constand.dart';

var themeData = ThemeData(
  fontFamily: 'Raleway',
  primaryColor: baseColor(indexColor),
  brightness: Brightness.light,
  scaffoldBackgroundColor: baseColor(indexColor),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // <-- Radius
    ),
  ),
  appBarTheme: AppBarTheme(
      backgroundColor: baseColor(indexColor),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: appBarTitle),
);
