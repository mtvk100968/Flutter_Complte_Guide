import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qusetionText;

  // Question Constructor Question(Arugument);
  Question(this.qusetionText);

  @override
  Widget build(BuildContext context) {
    // Container widget will have Margin, Border, Padding then child
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qusetionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
