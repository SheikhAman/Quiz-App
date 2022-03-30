import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, dynamic>>? questions;
  VoidCallback? answerQuestion;
  int questionIndex;
  Quiz({
    this.questions,
    this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions![questionIndex]['questionText']),

        // ... three dots are called spread operators thats are used for taking a list and take all the value out of it and add them to the surrounding list as individual values
        ...(questions![questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion!, answer);
        }).toList(),
      ],
    );
  }
}
