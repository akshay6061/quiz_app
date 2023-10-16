import 'package:flutter/material.dart';
import 'package:flutter_class12/mainscreens/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(seconds: 3),() {},);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Container(
      //     child: Text("QUIZ",style: 
      //     TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.redAccent,)),
      //   ),
      // ),
    );
  }
}