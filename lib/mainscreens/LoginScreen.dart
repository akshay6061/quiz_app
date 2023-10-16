import 'package:flutter/material.dart';
import 'package:flutter_class12/mainscreens/HomeScreen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Scaffold(
        backgroundColor: Color.fromRGBO(255, 232, 187,1),
        appBar:  
        AppBar(backgroundColor: Color.fromRGBO(30, 104, 179,1),actions: [ Padding(
          padding: const EdgeInsets.only(right: 280,top: 10),
          child: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ),]),
         body: 
         Center(
           child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // children: [Padding(
            //   padding: const EdgeInsets.only(top: 0),
            //   child: Container(width: double.infinity,
            //   height: 300,
            //   child: Image.asset("assets/getready.jpg"),),
            // ),
            //   Container(width: 380,child: Text("Lets check your iq based on your general knowledge. Enter your NAME below and click 'START' to begin....",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),),
            //   SizedBox(height: 50,),
            //   Container(
            //     width: 360,
            //     child: TextFormField(
            //     decoration: InputDecoration(
            //       hintText: "enter your name",
            //     ),
                
            //     ),
            //   ),
            //   SizedBox(height: 15),

            //   ElevatedButton(onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            //   }, child: Text('START',style:TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),style: ElevatedButton.styleFrom(primary:Color.fromRGBO(244, 120, 108,1)),)
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  child: Container(width: double.infinity,
                height: 250,
                child: Image.asset("assets/getready.jpg"),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Container(height: 120,
                  width: 380,child: Text("Lets check your iq based on your general knowledge. Enter your NAME below and click 'START' to begin....",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),),
              ),
              
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(height: 40,
                  width: 360,
                  child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your name",
                  ),
                  
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(height: 30,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  }, child: Text('START',style:TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),style: ElevatedButton.styleFrom(primary:Color.fromRGBO(244, 120, 108,1)),),
                ),
              )
            ]  
           ,
           ),
         ), 
        ),
        
      );
    
  }
}