import 'package:flutter/material.dart';

class FlutterCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      //z轴的高度，设置card的阴影
      elevation: 20.0,
      //设置shape，也就是R角
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),),
      //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
      clipBehavior: Clip.antiAlias,
      semanticContainer: false,
      child: getChild(),
    );
  }

  getChild() {
    return Container(
      color: Colors.deepPurpleAccent,
      width: 200,
      height: 150,
      alignment: Alignment.center,
      child: Text(
        "Card",
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
    );
  }
}
