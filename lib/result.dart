import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuestion;

  Result(this.totalScore, this.resetQuestion);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Text(
              'You Scored',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Text(
            totalScore.toString(),
            style: TextStyle(fontSize: 50),
          ),
          Text('Thank you!'),
          ElevatedButton(
            onPressed: resetQuestion,
            child: Text('Reset Question'),
          ),
        ],
      ),
    );
  }
}
