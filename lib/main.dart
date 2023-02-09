import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Color?',
      'What\'s your favourite Animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),

            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),

            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chooosen!'),
            ),

            // Elivated button Not working but excuted
            ElevatedButton(
              child: Text('Answer null'),
              onPressed: null,
            ),

            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //......
                print('Answer 3 Choooooosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
