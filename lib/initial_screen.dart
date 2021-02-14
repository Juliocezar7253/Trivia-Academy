import 'package:flutter/material.dart';
import 'package:trivia_academy/trivia_screen.dart';
import 'trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        SizedBox(height: 130, width: 150),
        Image(image: AssetImage('lib/assets/JC.png'), height: 200, width: 200,),
        SizedBox(height: 30, width: 150),
        Text("QUIZ\n ACADEMY", 
        textAlign: TextAlign.center,
        style: TextStyle(
         color: Colors.blue[900],
         fontSize: 25, 
         fontWeight: FontWeight.w800, 
         fontFamily: "Roboto",
           ),
         ),
        SizedBox(height: 170, width:150), 
        FlatButton(
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => TriviaScreen())) ;
        },
        child: Text("Vamos começar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),),
        color: Colors.blue[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
        ),
      ],),
    );
  }
}