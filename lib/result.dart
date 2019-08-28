import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 13) {
      resultText = 'You scored low';
    } else if (resultScore <= 19) {
      resultText = 'You scored ok';
    } else {
      resultText = 'You scored high';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz'), onPressed: reset,)
        ],
      )
    ); 
  }
}