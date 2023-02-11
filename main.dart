import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// MyAppState to _MyAppState and all other _ will protect this class
// By putting _ becomes public class to private class
// to not to manupulate or cant be used out side
// then adding_ becomes its a private properrty of this class
// means Cant be used this class from anywhere else

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite Color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answers': ['Lion', 'Rabbit', 'Peacock', 'Hen'],
    },
    {
      'questionText': 'What\'s your favourite Phone?',
      'answers': ['Iphone', 'Samsung', 'MI', 'Motorola'],
    },
    {
      'questionText': 'What\'s your favourite Phone?',
      'answers': ['Iphone', 'Samsung', 'MI', 'Motorola'],
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answers': ['Lion', 'Rabbit', 'Peacock', 'Hen'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    //during comilation error will come as
    //Unsupported operation Cannot add to an
    //unmodified list for keeping const before Hello.
    //var dummy = const ['Hello'];
    //dummy.add('Max');
    //print(dummy);
    // questions = []; does not work if questions is const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  // Question function called
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
