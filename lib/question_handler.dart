import 'package:flutter/material.dart';

class QuestionHandler extends StatelessWidget {
  final String question;
  QuestionHandler(this.question);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
