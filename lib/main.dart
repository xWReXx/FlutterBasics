import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
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
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column (
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestions, answer)
            }).toList()
          ]
        ),
      )
    );
  }
}