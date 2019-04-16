import 'package:flutter/material.dart';

import './TextOutput.dart';

class TextControl extends StatefulWidget {
  final String textValue;

  TextControl({this.textValue = 'Get Set...'});

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _currentText;

  @override
  void initState() {
    super.initState();
    _currentText = widget.textValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _currentText = "GO!";
                  });
                },
                child: Text("Change"))),
        TextOutput(_currentText)
      ],
    );
  }
}
