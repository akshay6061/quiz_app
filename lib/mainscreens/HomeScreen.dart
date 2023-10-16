import 'package:flutter/material.dart';
import 'package:flutter_class12/mainscreens/score.dart';
import 'package:flutter_class12/utils/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? ans;
  int? value;
  int Quescount = 0;
  int QuesNo = 0;
  int rAns = 0;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 232, 187,1),
        appBar: AppBar(backgroundColor: Color.fromRGBO(30, 104, 179,1),
        actions: [Padding(
          padding: const EdgeInsets.only(top: 10,right: 130),
          child: Text("QUESTIONS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        )],
        ),
        body:  Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(255, 232, 187,1),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Question ?",
                        style: TextStyle(
                            
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                            color: Colors.black),
                        textAlign: TextAlign.left,
                        ),
                        Text(
                          "${QuesNo + 1}/10",
                          style: TextStyle(color: Colors.black),
                          )
                    ]),
                     SizedBox(height: 15,),
                    Center(
                      child: Text(
                        DataBase.QuizData[QuesNo]['Question'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Expanded(child:
                     ListView.builder(
                      itemCount: 4,
                      itemBuilder:(context, index) => 
                      Padding(padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            value=index;
                            print(value);
                            value == DataBase.QuizData[QuesNo]['Answer']
                            ? rAns++
                            : print("");

                          });
                        },
                        child:  Container(
                            padding: EdgeInsets.only(
                                left: 20, top: 10, bottom: 10, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Color.fromRGBO(30, 104, 179,1)),
                                color: value == index
                                    ? value ==
                                            DataBase.QuizData[QuesNo]['Answer']
                                        ? Colors.green
                                        : Colors.red
                                    : Colors.transparent
                                ),
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .50,
                                  child: Text(
                                    DataBase.QuizData[QuesNo]['Options'][index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Color.fromRGBO(255, 232, 187,1),
                                    child: value == index
                                    ? value ==
                                    DataBase.QuizData[QuesNo]
                                    ['Answer']
                                    ? Icon(Icons.done)
                                    : Icon(Icons.close)
                                    :SizedBox(),
                                    
                                  ),
                                )
                                  ],
                                ),
                                )
                      ),
                      ), 
                      ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            QuesNo++;
                            value = 5;
                            Quescount++;
                            Quescount > 9
                            ? Navigator.pushReplacement(context,
                             MaterialPageRoute(builder: (context) => Score(ans: rAns),
                             ))
                             :SizedBox();
                          });
                        },
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                      ),
                      width: 150,
                      child: Center(
                        child: Text(
                          "Next",
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
                ],
                ),
        ),
        value == DataBase.QuizData[QuesNo]['Answer']
       ? Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                    ))
                : SizedBox()
        ],
        
        ),
    ),
    
      )
    );
  }
}
