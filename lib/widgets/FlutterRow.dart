import 'package:flutter/material.dart';

class FlutterRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(child: Container(color: Colors.brown,),flex: 1,),
          Expanded(child: Container(color: Colors.blue,), flex: 1,),
          Container(color: Colors.amberAccent,constraints: BoxConstraints(minHeight: 100, maxHeight: 100),)//未参与Expanded，
          // 除了此Widget的空余区域均留给Expanded修饰的Colors.brown & Colors.blue,进行1：1等分
        ],
      ),
    );
  }
}
