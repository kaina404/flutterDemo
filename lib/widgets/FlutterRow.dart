import 'package:flutter/material.dart';

class FlutterRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[Text("One"), Text("Two"), Text("Three")],
      ),
    );
  }
}
