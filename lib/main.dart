import 'package:flutter/material.dart';
import 'package:quiz_time/AlertControllers/alertcontrollers.dart';

import './InternetConnectionCheck/BaseState.dart';
import './quiz.dart';
import './result.dart';
import './InternetConnectionCheck/connection_banner.dart';
import './bookinginfo.dart';

//void main() => runApp(MyApp());
void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  MyApp({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends BaseState<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      "question": "What's my favorite food?",
      "answers": [
        {"text": "Biryani", "score": 7},
        {"text": "Non Veg", "score": 2},
        {"text": "Snacks", "score": 5},
        {"text": "All the Above", "score": 10}
      ]
    },
    {
      "question": "What's my favorite animal?",
      "answers": [
        {"text": "Dog", "score": 1},
        {"text": "Cat", "score": 10},
        {"text": "Lion", "score": 5},
        {"text": "All the Above", "score": 3}
      ]
    },
    {
      "question": "What's my favorite place?",
      "answers": [
        {"text": "HomeTown", "score": 7},
        {"text": "Bangalore", "score": 5},
        {"text": "Hyderabad", "score": 2},
        {"text": "None of the above", "score": 1}
      ]
    },
  ];

  void _buttonPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Button pressed");
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _navigateToBookingInfoScreen(BuildContext context) {
    isOnline
        ? Navigator.push(context,
            MaterialPageRoute(builder: (context) => BookingInfoScreen()))
        : simpleAlertController(context, "Problem",
            "You should be online to use this service, try when online");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: RaisedButton(
          child: Text('Booking Info'),
          onPressed: () => _navigateToBookingInfoScreen(context),
        ),
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            isOnline ? Text('') : ConnectionBanner(isOnline),
            _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    buttonPressed: _buttonPressed)
                : Result(_totalScore, _restartQuiz)
          ],
        ),
      ),
    );
  }
}
