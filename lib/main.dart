import 'package:flutter/material.dart';
import 'package:poggers/ui/pages/login_page.dart';
import 'package:poggers/ui/pages/splash1_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash1Page(),
    );
  }
}
