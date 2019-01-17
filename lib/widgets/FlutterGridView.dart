import 'package:flutter/material.dart';

class FlutterGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10.0),
      crossAxisCount: 3,
      children: getWidgetList(),
    );
  }

  List<Widget> getWidgetList() {
    List<String> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(i.toString());
    }

    return list
        .map((item) => Container(
              child: Text(item),
              color: Colors.blue,
            ))
        .toList();
  }
}
