import 'package:flutter/material.dart';

class FlutterFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.access_alarm),
      tooltip: "ToolTip",
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepPurple,
      shape: const Border(),
      onPressed: () {
        //click callback
      },
    );
  }
}
