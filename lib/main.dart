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
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 100,),
              Image.asset(
                'assets/logo.png',
                width: 100,
                height: 150,
              ),
                 SizedBox(height: 200,),
              Text(
                "From",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.7),
                    letterSpacing: 2),
              ),
                 SizedBox(height: 12,),
              Text(
                "Meta",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black.withOpacity(0.7),
                    letterSpacing: 3),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        duration: 10000,
        splashIconSize: 600,
        pageTransitionType: PageTransitionType.bottomToTop,
        nextScreen: MyApp());
  }
}
