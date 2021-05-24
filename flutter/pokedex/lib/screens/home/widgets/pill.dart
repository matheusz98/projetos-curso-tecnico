import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final Color color;
  final String text;

  Pill({
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 3,
      ),
    );
  }
}
