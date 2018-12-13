import 'package:flutter/material.dart';

class FlutterAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-1, 1),
      child: Container(
        child: Text(
          "Hello",
        ),
      ),
    );
  }
}
