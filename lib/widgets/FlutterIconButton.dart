import 'package:flutter/material.dart';

class FlutterIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        color: Colors.deepOrangeAccent,
        splashColor: Colors.purple,
        icon: Icon(
          Icons.android,
          color: Colors.deepPurpleAccent,
        ),
        onPressed: () {});
  }
}
