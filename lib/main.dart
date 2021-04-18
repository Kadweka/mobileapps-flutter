import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chossen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favourite color?',
      'Whats your favouritr animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("The Questions!!"),
            RaisedButton(
              child: Text("Answe1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answe2"),
              onPressed: () => print("Answer 2 chossen"),
            ),
            RaisedButton(
              child: Text("Answe3"),
              onPressed: () => print("Answer 3 chossen"),
            ),
          ],
        ),
      ),
    );
  }
}
