import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/main_screen/HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds before navigating to the home screen
    Timer(Duration(seconds: 3), () => _navigateToNextScreen());
  }

  void _navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
           gradient: LinearGradient(
              colors:[
                  Color(0xff955cd1),
                  Color(0xff3fa2fa),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.2 , 0.85]
                ),
        ),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const  [
              Text(
                "let's see weather",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40, 
                  fontStyle: FontStyle.italic
                ),),
              SizedBox(height: 20),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ), );
  }
}
