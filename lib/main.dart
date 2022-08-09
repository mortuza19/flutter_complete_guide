import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Red', 'Blue', 'Green', 'Pink']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Tiger', 'Lion', 'Giraffe', 'Horse']
    },
    {
      'questionText': 'What\'s your favourite Food?',
      'answers': ['Biryani', 'Noodles', 'Sandwich', 'Hot dog']
    }
  ];

  var _selectedQuestion = 0;

  void _answerQuestion() {
    setState(() {
      if (_selectedQuestion < questions.length - 1) {
        _selectedQuestion = _selectedQuestion + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main Title'),
        ),
        body: Column(
          children: [
            Question(
                questionText: questions
                    .elementAt(_selectedQuestion)['questionText'] as String),
            ...(questions[_selectedQuestion]['answers'] as List<String>)
                .map((e) {
              return Answer(
                answerQuestion: _answerQuestion,
                answerText: e,
              );
            })
          ],
        ),
      ),
    );
  }
}
