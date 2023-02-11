import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

// https://www.youtube.com/watch?v=UYI4cF1BYs4
// https://stackoverflow.com/questions/67762455/flutter-argument-of-type-function-cant-be-assigned-to-the-parameter-of-type

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            ElevatedButton(child: Text('Answer1'), onPressed: selectHandler));
  }
}
