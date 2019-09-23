import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;
  final totalScore;
  Result(this.totalScore, this.restartQuiz);

  Question get totalScoreText {
    return Question("Your Score $totalScore");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        totalScoreText,
        Question("thats all we have for now, Thanks you"),
        Answer("Restart", restartQuiz)
      ],
    );
  }
}
