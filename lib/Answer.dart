import 'package:flutter/material.dart';
import './DisplayText.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function funonpress;
  Answer({this.answer, this.funonpress});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue[300],
      child: DisplayText(answer),
      onPressed: funonpress,
    );
  }
}
