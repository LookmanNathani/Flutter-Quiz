import 'package:flutter/material.dart';
import 'package:quiz/answers.dart';
import 'package:quiz/question_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question_no = 0;

  void question_increment() {
    setState(() {
      _question_no += 1;
    });
  }

  var questions = [
    {
      'question': 'What\'s your favourite color?',
      'answers': ['Blue', 'Red', 'Yellow', 'Green'],
    },
    {
      'question': 'What\'s your favourite meal?',
      'answers': ['Breakfast', 'Lunch', 'Snacks', 'Dinner'],
    },
    {
      'question': 'Do you like this app?',
      'answers': ['Heck Yeah', 'Yes', 'No', 'Maybe'],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Game'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              QuestionHandler(questions[_question_no]['question']),
              ...(questions[_question_no]['answers'] as List<String>).map((answer) {
                return Answers(question_increment,answer);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
