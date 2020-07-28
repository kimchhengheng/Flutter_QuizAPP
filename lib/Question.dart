import 'package:flutter/material.dart';
import './DisplayText.dart';
class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return DisplayText(question);
  }
}
