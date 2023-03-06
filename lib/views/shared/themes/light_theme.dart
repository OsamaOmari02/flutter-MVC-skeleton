import 'package:flutter/material.dart';

// final Color Colors.white = HexColor('#0B2545');
// final Color Colors.grey = HexColor('#CACDD4');
// final Color lightThirdColor = HexColor('#7A8EA9');
// final Color lightFourthColor = HexColor('#C3CCD7');
// final Color lightFifthColor = HexColor('#E8E9E5');
// final Color lightSixthColor = HexColor('#F97A1F');
// final Color lightSeventhColor = HexColor('#FFFFFF');

final lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
  ),
  brightness: Brightness.light,
  primaryColor: Colors.white,
  colorScheme: const ColorScheme.light(
    primary: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white)
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    foregroundColor: Colors.grey,
  ),
  inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: Colors.white),
      iconColor: Colors.grey,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      )),
);
