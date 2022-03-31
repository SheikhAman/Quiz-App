import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var questionCounter;
  String answerText;
  Answer({required this.answerText, required this.questionCounter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ElevatedButton(
          onPressed: questionCounter,
          child: Text(
            answerText,
          ),
          // style: ElevatedButton.styleFrom(primary: Colors.white),
        ),
      ),
    );
  }
}
