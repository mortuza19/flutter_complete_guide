import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText;

  const Answer(
      {Key? key, required this.answerQuestion, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: RaisedButton(
        onPressed: answerQuestion,
        color: Colors.lightBlue,
        textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}
