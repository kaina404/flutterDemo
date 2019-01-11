import 'package:flutter/material.dart';

class FlutterDropdownButtonStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropdownState();
  }
}
//返回城市列表，写法一
List<DropdownMenuItem> _getItems() {
  List<DropdownMenuItem> items = new List();
  //value 表示DropdownButton.onChanged的返回值
  items.add(DropdownMenuItem(child: Text("北京"), value: "BJ"));
  items.add(DropdownMenuItem(child: Text("上海"), value: "SH"));
  items.add(DropdownMenuItem(child: Text("广州"), value: "GZ"));
  items.add(DropdownMenuItem(child: Text("深圳"), value: "SZ"));
  return items;
}
//返回城市列表，写法二
List<DropdownMenuItem<String>> _getCityList() {
  var list = ["北京", "上海", "广州", "深圳"];
  return list.map((item) => DropdownMenuItem(
    value: item,
    child: Text(item),
  )).toList();
}

//下划线开头表示私有
class _DropdownState extends State<FlutterDropdownButtonStatefulWidget> {
//  下拉菜单选中的值（注意：在初始化时，要么为null，这时显示默认hint的值；如果自己设定值，则值必须为列表中的一个值，如果不在列表中，会抛出异常）
  String selectValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      //要显示的条目
      items: _getItems(),
      //默认显示的值
      hint: Text("请选择城市"),
      //下拉菜单选中的值（注意：在初始化时，要么为null，这时显示默认hint的值；如果自己设定值，则值必须为列表中的一个值，如果不在列表中，会抛出异常）
      value: selectValue,
      onChanged: (itemValue) {//itemValue为选中的值
        print("itemValue=$itemValue");
        _onChanged(itemValue);
      },
    );
  }
  _onChanged(String value) {
    //更新对象的状态
    setState(() {
      selectValue = value;
    });
  }
}
