import 'package:flutter/material.dart';
//////////////  🚨🚨🚨  🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 //////////////////
// Add import For Alert Package
import 'package:rflutter_alert/rflutter_alert.dart';
////////////////////////////////////////////////////////


 import 'package:quiz_app/quiz_brain.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App"),),
        backgroundColor: Colors.blue[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain quizBrain = new QuizBrain();

  // List For Icons
  List<Icon> scoreKeper = [];
  
  void checkAnswer(bool userAswer)
  {


    //////////////  🚨🚨🚨  🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 //////////////////
//////////////// A new part, which we did not cover in class ( If there are no new Question, notify the user with an alert message. )
 // Note : In order to use Alert You must Download the package from below link 👇👇
                                                // https://pub.dev/packages/rflutter_alert


    //if There is no more Question
    if(quizBrain.checknext() == false ) {
      Alert(context: context, title: "Alert", desc: "The test is over :) ").show();

      setState(()
      {
        // Reset Question Counter
        quizBrain.resetnumber();
        // Reset Icons List
        scoreKeper = [];
      });


    }
    //If there are any additional questions check answer and display ICon
    else
      {
      setState(()
      {
        if (quizBrain.getquestionAnswer() == userAswer) {
          scoreKeper.add(Icon(Icons.check, color: Colors.green,));
        }
        else
          {
          scoreKeper.add(Icon(Icons.close, color: Colors.red,));
        }

        quizBrain.nextQuestion();
      }
      );
    }
  }
           
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getquestiontext(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                //The user picked false.
              },
            ),
          ),
        ),
        Row(children: scoreKeper,)
      ],
    );
  }
}