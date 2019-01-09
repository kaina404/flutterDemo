import 'package:flutter/material.dart';

class FlutterFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        child: Text(
          "FlatBtn",
          style: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ));
  }
}
