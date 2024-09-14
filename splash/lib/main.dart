import 'package:flutter/material.dart';
import 'splash_screen.dart';  // Import splash screen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen App',
      home: SplashScreenPage(),  // Initial page is the splash screen
    );
  }
}
