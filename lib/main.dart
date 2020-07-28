import 'package:flutter/material.dart';
import './DisplayText.dart';
import './Footerbutton.dart';
import './Quiz.dart';
import './Result.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var _index=-1;
  var _score=0;
  var _count=0;
  var _questions = [
    {
      'questiontext': "what is 2+2?",
      'answertext': [{'text': "4", 'score': 25}, {'text': "5", 'score': 0}]
    },
    {
      'questiontext': "what is 2*3?",
      'answertext': [{'text': "4", 'score': 0},{'text': "6", 'score': 25}]
    },
    {
      'questiontext': "what is 2/2?",
      'answertext': [{'text': "1", 'score': 25}, {'text': "5", 'score': 0}, {'text': "6", 'score': 0}]
    },
  ];
  void _nextquestion(){
    setState(() {
      _index +=1;
    });
  }
  void _previousquestion(){
    if(_index >0) {
      setState(() {
        _index -= 1;
      });
    }
  }
  void _answerquestion(int score){
    _score +=score;
    _count++;
    if(score !=0){
      _nextquestion();
    }
  }
  void _restart(){

      setState(() {
        _index =0;
        _score =0;
        _count=0;
        _questions.shuffle();
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: DisplayText("Quiz App"),
          ),
          body: _index<0 ? Container(
              child: MaterialButton(
                child: DisplayText("start the game"),
                onPressed: () =>{_nextquestion()},
                )
          )
          : (_index<_questions.length ? Container(child: Column(
            children: <Widget>[
              Quiz(index: _index,questions: _questions,pressHandler:_answerquestion ,),
              FooterButton( next: _nextquestion,prev: _previousquestion )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          )
          )
              : Result(restart: _restart, score: _score, less: _count<_index )),
          backgroundColor: Colors.blue[100],

      )
    );
  }
}
