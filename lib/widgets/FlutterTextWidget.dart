import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return txt2;
  }

  //TextStyle->decoration: TextDecoration.none 去掉Text默认的下划线
  //decoration 装饰属性
  var txt1 = Text("hello",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold, decoration: TextDecoration.none));

  var txt2 = Text.rich(TextSpan(
      text: "text.rich",
      style: TextStyle(decoration: TextDecoration.none),
      children: <TextSpan>[
        TextSpan(
            text: " the ",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none)),
        TextSpan(
            text: "world",
            style: TextStyle(fontSize: 20, decoration: TextDecoration.none))
      ]));
}
