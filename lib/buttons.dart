import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function selectedHandler;
  final String title;

  Buttons(this.selectedHandler, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: selectedHandler,
          child: Text(title),
        ),
      ),
    );
  }
}
