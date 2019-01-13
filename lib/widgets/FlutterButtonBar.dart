import 'package:flutter/material.dart';

class FlutterButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(children: <Widget>[
      Text("ButtonBar0"),
      Icon(Icons.ac_unit),
      Text("ButtonBar1")
    ], );
  }
}
//
//const ButtonBar({
//Key key,
  //ButtonBar的child之间的排序方式
//this.alignment = MainAxisAlignment.end,
//this.mainAxisSize = MainAxisSize.max,
  //Button的children
//this.children = const <Widget>[],
//})
