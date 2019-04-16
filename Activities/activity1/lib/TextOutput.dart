import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String txt;

  TextOutput(this.txt);

  @override
  Widget build(BuildContext context) {
    return Text(txt);
  }
}