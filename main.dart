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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // Question function called
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()

            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),

            //ElevatedButton(
            // child: Text('Answer 2'),
            //  onPressed: () => print('Answer 2 Chooosen!'),
            //),

            // Elivated button Not working but excuted
            //ElevatedButton(
            //  child: Text('Answer null'),
            //  //onPressed: null is not working
            //  //onPressed: null,
            //  onPressed: () {
            //    //......
            //    print('Answer NULL Choooooosen!');
            //  },
            //),

            //ElevatedButton(
            //  child: Text('Answer 3'),
            //  onPressed: () {
            //......
            //    print('Answer 3 Choooooosen!');
            //  },
            //),
          ],
        ),
      ),
    );
  }
}
