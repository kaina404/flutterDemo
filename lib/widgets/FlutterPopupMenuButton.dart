import 'package:flutter/material.dart';

class FlutterPopupMenuButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PopupMenuState();
}

const List<String> models = const <String>['白天模式', '护眼模式', '黑夜模式'];

class _PopupMenuState extends State<FlutterPopupMenuButton> {
  String title = models[0];

  List<PopupMenuEntry<String>> _getItemBuilder() {
    return models
        .map((item) => PopupMenuItem<String>(
              child: Text(item),
              value: item,//value一定不能少
            ))
        .toList();
  }

  void _select(String value) {
    setState(() {
      title = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return _getItemBuilder();
              },
            )
          ],
        ),
      ),
    );
  }

//  List<PopupMenuEntry> _getItemBuilder() {
//    List<PopupMenuEntry> list = List();
//    list.add(PopupMenuItem(
//      child: Text("白天模式"),
//      value: "Day",
//    ));
//    list.add(PopupMenuItem(
//      child: Text("黑夜模式"),
//      value: "Night",
//    ));
//    return list;
//  }

}

