import 'package:flutter/material.dart';
import 'dart:async';  // For using the Timer
import 'home_screen.dart';  // Import home screen file

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    // Delay before navigating to the home screen
    Timer(Duration(seconds: 3), () {
      // Navigate to the home screen after splash screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  // Background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo or image for the splash screen
            Image.asset(
              'assets/insta.png',  // Make sure to add an image in assets
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
