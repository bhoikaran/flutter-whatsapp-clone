import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whatsapp/app.dart';

void main() {
  runApp(MaterialApp(
    title: "Spotify",
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          child: Image.asset('assets/logo.png'),
        ),
        backgroundColor: Colors.black,
        duration: 1200,
        splashIconSize: 180,
        pageTransitionType: PageTransitionType.bottomToTop,
        nextScreen: MyApp());
  }
}