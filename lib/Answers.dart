// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback handler;
  final String answerText;

  const Answers(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(
          answerText,
        ),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () => handler);
  }
}
