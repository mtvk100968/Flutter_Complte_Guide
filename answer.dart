import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    // use SizedBox for white space instead of Container
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler(),
        style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(const TextStyle(color: Colors.white)),
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: Text(answerText),
      ),

      // RaisedButton is deprecated and should not be used
      // Use ElevatedButton instead

      // child: RaisedButton(
      //   color: const Color(0xFF00E676),
      //   textColor: Colors.white,
      //   onPressed: selectHandler(),
      //   child: Text(answerText),
      // ), //RaisedButton
    ); //Container
  }
}


/*

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  //final String answerText;

  Answer(this.selectHandler);
//const Answer(this.selectHandler, this.answerText);

// https://www.youtube.com/watch?v=UYI4cF1BYs4
// https://stackoverflow.com/questions/67762455/flutter-argument-of-type-function-cant-be-assigned-to-the-parameter-of-type

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            ElevatedButton(child: Text('answers'), onPressed: selectHandler));
  }
}
*/