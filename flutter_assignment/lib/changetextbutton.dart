import 'package:flutter/material.dart';

class ChangeTextButton extends StatelessWidget {
  final Function selectHandler;

  ChangeTextButton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Cool Button!!!'),
        onPressed: selectHandler,
      ),
    );
  }
}
