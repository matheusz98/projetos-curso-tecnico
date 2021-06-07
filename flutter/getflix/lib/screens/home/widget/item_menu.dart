import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String word;

  ItemMenu({
    required this.word,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        word,
      ),
      onPressed: () {},
    );
  }
}