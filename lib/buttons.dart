import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function selectedHandler;

  Buttons(this.selectedHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: selectedHandler,
          child: Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: selectedHandler,
          child: Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: selectedHandler,
          child: Text('Answer 3'),
        )
      ],
    );
  }
}
