import 'package:flutter/material.dart';
import 'package:flutter_mvc_skeleton/core/network/dio_client.dart';
import 'package:flutter_mvc_skeleton/core/network/hive_service.dart';
import 'package:flutter_mvc_skeleton/core/network/shared_pref_service.dart';
import 'package:flutter_mvc_skeleton/views/pages/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init methods
  await SharedPrefService.init();
  await HiveService.init();
  DioClient.init();
  runApp(const MyApp());
}


