import 'package:flutter/material.dart';
import 'package:flutter_class12/mainscreens/LoginScreen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Score extends StatelessWidget {
  const Score({super.key, required this.ans});
  final int ans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 232, 187,1),
      body: 
      Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircularPercentIndicator(
                radius: 80,
                progressColor: Colors.green,
                lineWidth: 15,
                backgroundColor: Colors.red,
                percent: ans/10,
                center: Text(
                      "${(ans * 10).toString()}%",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "correct answer : $ans",
              style: 
              TextStyle(fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                      ),
            SizedBox(height: 10,),
            Text(
                  "Wrong Answers : ${10 - ans}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: 
                    (context) => LoginPage(),));
                  },
                  child: Container(
                     decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepOrange,
                ),
                width: 150,
                child: Center(
                  child: Text(
                    "Try Again",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                height: 60,
                  ),
                ),
                SizedBox()
          ],
        )
      ),
    );
  }
}