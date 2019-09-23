import 'package:flutter/material.dart';

class ListViewText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  ListViewText(
      {@required this.text, this.fontSize = 20, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
