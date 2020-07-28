import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final Function next;
  final Function prev;
  FooterButton({@required this.next,@ required this.prev});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          child: Icon(Icons.navigate_before, color: Colors.blue[300], size: 30,),
          shape: CircleBorder(),
          onPressed: prev,
          color: Colors.blue[100],
        ),
        MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.blue[300], size: 30,),
          shape: CircleBorder(),
          onPressed: next,
          color: Colors.blue[100],
        ),
      ],
    );
  }
}
