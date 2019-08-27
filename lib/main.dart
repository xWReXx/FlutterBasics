import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {

  
  @override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
      {
        'questionText': 'who?', 'answers': ['me','you','them', 'him'],
      },
      {
        'questionText': 'what?', 'answers': ['que?','hmmm?','uhhhh...'],
      },
      {
        'questionText': 'why?', 'answers': ['because I can','I wanted to', 'it\'s funny'],
      },
    ];

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestions: _answerQuestions, questionIndex: _questionIndex, questions: _questions) 
        : Result(),
      )
    );
  }
}