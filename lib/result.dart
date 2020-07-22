import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultSore;
  final Function resetHandler;

  Result(this.resultSore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultSore <= 8) {
      resultText = "You're awesome and innocent";
    } else if (resultSore <= 12) {
      resultText = "Pretty likable";
    } else if (resultSore <= 16) {
      resultText = "You're strange";
    } else {
      resultText = "You're so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
