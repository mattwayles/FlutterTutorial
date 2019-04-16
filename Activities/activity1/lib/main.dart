import 'package:flutter/material.dart';

import './TextControl.dart';

main() => runApp(TextApp());

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Activity 1"),
          ),
          body: TextControl()),
    );
  }
}
