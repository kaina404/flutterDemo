import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: SafeArea(
          child: RaisedButton(
              child: Text(" Navigator.push SecondPage"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              })),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: SafeArea(
          child: RaisedButton(
              child: Text(" Navigator.pop SecondPage"),
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              })),
    );
  }
}
