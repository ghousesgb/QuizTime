import 'package:flutter/material.dart';
import 'package:quiz_time/bookinginfo.dart';
import 'package:quiz_time/main.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/bookinginfo':
        //if (args is String) {
        return MaterialPageRoute(builder: (_) => BookingInfoScreen(/* data: args */));
      //} else { return _errorRoute();}
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error Page',),
        ),
        body: Center(child: Text('Page Not Found'),),
      )
    });
  }
}