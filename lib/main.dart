import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class12/mainscreens/HomeScreen.dart';
import 'package:flutter_class12/mainscreens/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(backgroundColor: Color.fromRGBO(255, 232, 187,1),duration: 3000,
      splash: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(width: double.infinity,
                
                child: Image.asset("assets/brand-logo-quiz.jpg")),
            )
          ],
        ),
      ),
      nextScreen:LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 300,
      )
    );
  }
}