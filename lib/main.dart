// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_string_escapes, use_key_in_widget_constructors, must_be_immutable, avoid_print

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

var questions = [
  {
    'questionText': 'What\'s you favourite colour ?',
    'answer': [
      {'text': ' Red', 'score': '50'},
      {'text': 'Blue', 'score': '75'},
      {'text': 'Black', 'score': '10'},
      {'text': 'White', 'score': '100'},
    ],
  },
  {
    'questionText': 'What\'s you favourite Animal ?',
    'answer': [
      {'text': ' Zebra', 'score': '50'},
      {'text': 'Elephant', 'score': '75'},
      {'text': 'Lion', 'score': '10'},
    ],
  },
  {
    'questionText': 'What\'s you favourite Lang ?',
    'answer': [
      {'text': ' Java', 'score': '50'},
      {'text': 'Python', 'score': '75'},
      {'text': 'Dart', 'score': '10'},
    ],
  }
];

class _MyAppState extends State<MyApp> {
  var indexNum = 0;
  var totalScore = 0;

  answerOfQuestion(int score) {
    totalScore += score;
    setState(() {
      indexNum += 1;
    });

    if (indexNum < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: indexNum < questions.length
            ? Quiz(
                answerOfQuestion: answerOfQuestion,
                indexNum: indexNum,
                questions: questions,
              )
            : Result(totalScore),
      ),
    );
  }
}
