import 'package:flutter/material.dart';
import 'package:triviaquiz/buttons.dart';
import 'package:triviaquiz/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Fish', 'Lion', 'Tiger'],
    },
    {
      'questionText': 'What\'s your favorite mall?',
      'answers': ['Ioi Mall', 'Alamanda', 'AEON', 'Giant Hypermarket'],
    },
    {
      'questionText': 'Where\'s your favorite place?',
      'answers': ['Home', 'Work', 'Australia', 'Singapore'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
        body: Column(
          children: [
            Question(_questions[_questionIndex]['questionText']),
            Buttons(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
