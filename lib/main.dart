import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 9},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Elephant', 'score': 7}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Aman', 'score': 1},
        {'text': 'Smartherd', 'score': 2},
        {'text': 'Max', 'score': 3},
        {'text': 'Angela', 'score': 4}
      ],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more _questions!');
    } else {
      print('No more _questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result()),
    );
  }
}
