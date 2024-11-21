import 'package:flutter/material.dart';
import 'intro_page1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroPage1()));
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/Lav.png', // Replace with your logo
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}