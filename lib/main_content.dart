import 'dart:math';
import 'package:color_change_application/message.dart';
import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {

  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  final _messages = [
    'Hey there',
    'What\'s up?',
    'It\'s been a great day!',
    'Wish you good luck',
    'You are the best'
  ];

  final Random _random = Random();
  int _messageId = 0;
  Color _bgColor = const Color.fromRGBO(255, 255, 255, 1);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => init(context));
  }

  void init(BuildContext context) {
    SnackBar snackBar =  const SnackBar(content: Text('Tap to change the color'),);

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() => {
                _messageId = (_messageId + 1) % _messages.length,
                _bgColor = Color.fromRGBO(_random.nextInt(256),
                    _random.nextInt(256), _random.nextInt(256), 1)
              });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: _bgColor,
          child: CenterMessage(_messages[_messageId]),
        ));
  }
}
