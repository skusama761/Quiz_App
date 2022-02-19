import 'package:flutter/material.dart';

import 'Answers.dart';
import 'Questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerOfQuestion;
  final int indexNum;
  Quiz(
      {@required this.answerOfQuestion,
      @required this.questions,
      @required this.indexNum});

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Questions(questions[indexNum]['questionText']),
          ...(questions[indexNum]['answer'] as List<Map<String, Object>>)
              .map((answer) {
            return Answers(() => answerOfQuestion(answer['score']),
                answer['text'] as String);
          }).toList()
        ],
      ),
    );
  }
}
