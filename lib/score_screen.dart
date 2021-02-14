import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {

  int result;
  int maximum;
  
  ScoreScreen({Key key, @required this.result, @required this.maximum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("QUIZ ACADEMY"), 
        backgroundColor: Colors.blue[900],),
      body: Column(
        children: [
          Expanded(child: 
          Column(
            children: [
              SizedBox(height: 113,),
              Text("VOCÊ ACERTOU: ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
              SizedBox(height: 90,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text("$result", style: TextStyle(fontSize: 75, fontWeight: FontWeight.w700, color: Colors.blue[900])),
                  Text("/", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.grey[800])),
                  Text("$maximum", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.grey[800])),
                ],
              ),
            ],
          ),
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
                Navigator.popUntil(context, (route) => route.isFirst);
               }, 
              child: Text("Jogar Novamente", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              color: Colors.blue[900],
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              )
              ),
          )
        ],
      ),
    );
  }
}