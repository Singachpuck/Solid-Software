import 'package:flutter/material.dart';

class CenterMessage extends StatelessWidget {
  final String text;

  CenterMessage(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.none
        ),
      ),
    );
  }
}
