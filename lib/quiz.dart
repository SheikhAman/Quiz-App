import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  var answerQuestion;
  int questionIndex;
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'].toString()),

        // ... three dots are called spread operators thats are used for taking a list and take all the value out of it and add them to the surrounding list as individual values
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            questionCounter: () => answerQuestion(answer['score']),
            answerText: answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}
