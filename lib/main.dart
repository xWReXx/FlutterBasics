import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
void answerQuestions() {
  print('Answer Chosen!');
}

  @override
  Widget build(BuildContext context) {
    // var questions = ['who?', 'what?', 'why?'];
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column (
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
          ]
        ),
      )
    );
  }
}