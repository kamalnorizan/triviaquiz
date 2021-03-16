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
      'answers': ['Black', 'Red'],
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
    if (_questionIndex < _questions.length) {
      print('Ada soalan lagi');
    } else {
      print('Soalan dah habis!');
    }
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
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
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Buttons(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Column(
                children: [
                  Center(
                    child: Text('Thank you!'),
                  ),
                  ElevatedButton(
                    // onPressed: () {
                    //   setState(() {
                    //     _questionIndex = 0;
                    //   });
                    // },
                    onPressed: _resetQuestion,
                    child: Text('Reset Question'),
                  )
                ],
              ),
      ),
    );
  }
}
