import 'package:books_app/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'utilities/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      home: const HomeScreen(),
    );
  }
}
