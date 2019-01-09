import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FlutterRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: RaisedButton(
            textTheme: ButtonTextTheme.accent,
            color: Colors.teal,
            highlightColor: Colors.deepPurpleAccent,
            splashColor: Colors.deepOrangeAccent,
            colorBrightness: Brightness.dark,
            elevation: 50.0,
            highlightElevation: 100.0,
            disabledElevation: 20.0,
            onPressed: () {
              //TODO
            },
            child: Text(
              'RaisedButton',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
