import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Center(
        child: Text(
          questionText,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
