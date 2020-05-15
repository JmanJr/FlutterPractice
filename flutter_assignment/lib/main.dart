import 'package:flutter/material.dart';
import './toptext.dart';
import './changetextbutton.dart';

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
void main() => runApp(AssignmentApp());

class AssignmentApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssignmentAppState();
  }
}

class _AssignmentAppState extends State<AssignmentApp> {
  final _textOptions = const [
    'WOWZERS',
    'boring',
    'Kind Of Cool!',
    'Is this all this does?',
    'yep',
  ];
  var _textOptionsIndex = 0;

  void updateText() {
    setState(() => _textOptionsIndex += 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Column(
          children: [
            TopText(_textOptions[_textOptionsIndex]),
            // 2) Add a button which changes the text (to any other text of your choice)
            _textOptionsIndex < _textOptions.length - 1
                ? ChangeTextButton(updateText)
                : TopText('all done boy'),
          ],
        ),
      ),
    );
  }
}

// 3) Split the app into three widgets: App, TextControl & Text
