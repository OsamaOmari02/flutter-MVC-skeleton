import 'package:flutter/material.dart';


const darkPrimaryColor = Color(0xff082659);
const darkSecondaryColor = Color(0xff51eec2);


final darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'AlegreyaSansSC',
  appBarTheme: const AppBarTheme(
    backgroundColor: darkPrimaryColor,
    centerTitle: true,
  ),
  brightness: Brightness.dark,
  primaryColor: darkPrimaryColor,
  colorScheme: const ColorScheme.dark(
    primary: darkPrimaryColor,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(color: darkPrimaryColor),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: darkPrimaryColor,
    foregroundColor: darkSecondaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: darkPrimaryColor),
      iconColor: darkSecondaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: darkSecondaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: darkPrimaryColor),
        borderRadius: BorderRadius.circular(8),
      )),
);
