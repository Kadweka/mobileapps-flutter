import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
