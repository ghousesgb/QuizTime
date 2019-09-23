import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function buttonPressed;
  final List<Map<String, Object>> questions;
  final questionIndex;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["question"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer["text"], () => buttonPressed(answer["score"]));
        }).toList()
      ],
    );
  }
}
