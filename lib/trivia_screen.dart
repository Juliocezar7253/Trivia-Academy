import 'package:flutter/material.dart';
import 'package:trivia_academy/questions.dart';
import 'package:trivia_academy/questions.dart';
import 'package:trivia_academy/score_screen.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  @override

  int answer = 0;
  int score = 0;
  int index = 0;
  List<Questions> questionsList = Questions.getQuestionsList();

  void verifyResponse(){
    if(answer == questionsList[index].answer){
      score++;
    }

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("QUIZ ACADEMY"), 
        backgroundColor: Colors.blue[900],),
        body: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: [
            Text("Pergunta: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 14,),
            Text(questionsList[index].questionText, style: TextStyle(fontSize: 17,),)
          ],),),
          Expanded(

            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(1,3),
                      ),
                    ],
                ),
                child: RadioListTile(
                  value: 1,
                  groupValue: answer, 
                  title: Text(questionsList[index].opt1),
                  onChanged: (int value) {
                    setState(() {
                      answer = value;
                    });
                  },
                ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(1,3),
                      ),
                    ],
                ),
                child: RadioListTile(
                  value: 2,
                  groupValue: answer, 
                  title: Text(questionsList[index].opt2),
                  onChanged: (int value) {
                    setState(() {
                      answer = value;
                    });
                  },
                ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(1,3),
                      ),
                    ],
                ),
                child: RadioListTile(
                  value: 3,
                  groupValue: answer, 
                  title: Text(questionsList[index].opt3),
                  onChanged: (int value) {
                    setState(() {
                      answer = value;
                    });
                  },
                ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(1,3),
                      ),
                    ],
                ),
                child: RadioListTile(
                  value: 4,
                  groupValue: answer, 
                  title: Text(questionsList[index].opt4),
                  onChanged: (int value) {
                    setState(() {
                      answer = value;
                    });
                  },
                ),
                ),
              ])
            ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0,-1)
                )
              ],
            ),
            child: Center(child: FlatButton(
              onPressed: (){
                verifyResponse(); 
                if(index < questionsList.length - 1){
                  setState(() {
                    index++;
                    answer = 0;
                    });
                  } else { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreScreen(maximum: questionsList.length, result: score,)));
                  }
                }, 
              child: Text("Responder", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              color: Colors.blue[900],
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              )
              ),
          )
        ],),
    );
  }
}