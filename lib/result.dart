import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = "You Are Awesome and Innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likable";
    } else if (resultScore <= 16) {
      resultText = "You Are ..... Stranger";
    } else {
      resultText = "You Are sooo Bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
