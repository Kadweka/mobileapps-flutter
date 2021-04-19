import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
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
  final _questions = const [
    {
      'questionText': 'Whats your Favourite color',
      'answers': ['black', 'White', 'Red', 'Green']
    },
    {
      'questionText': 'Whats your Favourite Animal',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Whats your Favourite Instructor',
      'answers': ['Hussein', 'Kadweka', 'Katana', 'Max']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more Questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // questions = []; does not work of questions is a const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
