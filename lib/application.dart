import 'package:flutter/material.dart';

import './main_content.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ChangeColor(),
        )
    );
  }
}
