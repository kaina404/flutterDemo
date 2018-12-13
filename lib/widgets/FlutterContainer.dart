import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/FlutterTextWidget.dart';

///painting: transform->decoration->paints the child -> paints the foregroundDecoration
/// Container 布局中会包含其他很多Widgets,所以该widget的layout behavior 比较复杂

class FlutterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 300, height: 100),
        child: Container(
          margin: EdgeInsets.all(20.5),
          padding: EdgeInsets.fromLTRB(30.4, 0, 0, 80),
          color: Colors.brown,
          child: Text("HELLO"),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
///minHeight: 100, minWidth: 200, maxWidth: 400, maxHeight: 200