import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var _questionIndex = 0;
  var _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite mall?',
    'Where\'s your favorite place?',
  ];

  void answerQuestion() {
    _questionIndex = _questionIndex + 1;
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Center(
                child: Text(
                  _questions[_questionIndex],
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
