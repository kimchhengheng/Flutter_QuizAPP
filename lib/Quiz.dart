import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function pressHandler;
  Quiz(
      {@required this.questions, @required this.index, @required this.pressHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[index]['questiontext']),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ...(questions[index]['answertext'] as List<Map<String, Object>>).map( (answer) {
                return Answer(answer: answer['text'], funonpress: () =>{pressHandler(answer['score'] ,questions[index]['try'])}
                );
              })
            ],
            )
            ],
          )
    );

  }
}

