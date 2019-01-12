import 'package:flutter/material.dart';

class FlutterDemoTestStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FlutterDemoTestState();
}

class _FlutterDemoTestState extends State<FlutterDemoTestStatefulWidget> {
  var selectValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: _getItems(),
        hint: Text("请选择城市"),
        value: selectValue,
        onChanged: (value) {
          print("value=$value");
          selectValue = value;
          setState(() {});
        });
  }
}

List<DropdownMenuItem> _getItems() {
  List<DropdownMenuItem> list = List();
  list.add(DropdownMenuItem(
    child: Text("北京"),
    value: "BJ",
  ));
  list.add(DropdownMenuItem(
    child: Text("上海"),
    value: "SH",
  ));
  list.add(DropdownMenuItem(
    child: Text("深圳"),
    value: "SZ",
  ));
  list.add(DropdownMenuItem(
    child: Text("广州"),
    value: "GZ",
  ));
  return list;
}
