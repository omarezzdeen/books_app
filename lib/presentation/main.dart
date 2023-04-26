import 'package:books_app/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utilities/theme/theme_manager.dart';

import '../di/di.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: MainBinding(),
      home: const MyApp(),
      theme: getApplicationTheme(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen(),
    );
  }
}
