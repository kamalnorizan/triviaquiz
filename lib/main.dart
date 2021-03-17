import 'package:flutter/material.dart';
import 'package:triviaquiz/quiz.dart';
import 'package:triviaquiz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Fish', 'score': 8},
        {'text': 'Lion', 'score': 6},
        {'text': 'Tiger', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite mall?',
      'answers': [
        {'text': 'Ioi Mall', 'score': 4},
        {'text': 'Alamanda', 'score': 6},
        {'text': 'AEON', 'score': 8},
        {'text': 'Giant Hypermarket', 'score': 10}
      ],
    },
    {
      'questionText': 'Where\'s your favorite place?',
      'answers': [
        {'text': 'Home', 'score': 10},
        {'text': 'Work', 'score': 4},
        {'text': 'Australia', 'score': 8},
        {'text': 'Singapore', 'score': 6},
      ],
    },
    {
      'questionText': 'Who\'s your favorite trainer?',
      'answers': [
        {'text': 'Kamal', 'score': 10},
        {'text': 'Kamal', 'score': 10},
        {'text': 'Kamal', 'score': 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_totalScore);
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Trivia Quiz'),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuestion),
      ),
    );
  }
}
