import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  var questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
