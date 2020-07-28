import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String content;
  DisplayText(this.content);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(content, style: TextStyle(color: Colors.purpleAccent, fontFamily: "Shadows", fontSize: 28 ), ));
  }
}
