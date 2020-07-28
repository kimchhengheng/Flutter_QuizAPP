import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './DisplayText.dart';
class Result extends StatelessWidget {
  final int score;
  final Function restart;
  final bool less;

  Result({@required this.score,@required this.restart, @required this.less});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          score>60?DisplayText("Congratulation"):DisplayText("please try harder next time"),
          less?DisplayText("You miss one or more questions"): DisplayText(" "),
          FlatButton(
            child: DisplayText("Restart"),
            onPressed: restart,
          )
        ],
      )
    );
  }
}
