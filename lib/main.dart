import 'package:flutter/material.dart';
import 'package:flutter_mvc_skeleton/core/themes/dark_theme.dart';
import 'package:flutter_mvc_skeleton/core/themes/light_theme.dart';
import 'package:flutter_mvc_skeleton/views/my_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init methods

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}

