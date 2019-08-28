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
  var _totalScore = 0;
  var _questionIndex = 0;
  final _questions = const [
      {
        'questionText': 'who?', 
        'answers': [
          {'text': 'me', 'score': 10},
          {'text': 'you', 'score': 8},
          {'text': 'them', 'score': 6}, 
          {'text': 'him', 'score': 4}],
      },
      {
        'questionText': 'what?', 
        'answers': [
          {'text': 'que?', 'score': 9},
          {'text': 'hmmm?', 'score': 6},
          {'text': 'uhhhh...', 'score': 3}],
      },
      {
        'questionText': 'why?', 
        'answers': [
          {'text': 'because I can', 'score': 9},
          {'text': 'I wanted to', 'score': 6}, 
          {'text': 'it\'s funny', 'score': 3}],
      },
    ];

  void _answerQuestions(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen!');
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestions: _answerQuestions, questionIndex: _questionIndex, questions: _questions) 
        : Result(_totalScore, _reset),
      )
    );
  }
}