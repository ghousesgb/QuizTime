import 'package:flutter/material.dart';

class ConnectionBanner extends StatelessWidget {
  final isOnline;

  ConnectionBanner(this.isOnline);

  Text get connectionString {
    if (isOnline) {
      return Text('');
      //return Text('online', textAlign: TextAlign.center ,style: TextStyle(fontSize: 15, color: Colors.white,),);
    } else {
      return Text(
        'offline',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: isOnline ? Colors.white : Colors.red,
      margin: EdgeInsets.only(bottom: 10),
      child: connectionString,
    );
  }
}
