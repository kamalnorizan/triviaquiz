import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var questions = [
  'What\'s your favorite color?',
  'What\'s your favorite animal?',
  'What\'s your favorite mall?',
  'Where\'s your favorite place?',
];

class MyApp extends StatelessWidget {
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
                  questions[2],
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen!'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 3 Chosen!');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion() {
    print('You choose Answer 1');
  }
}
