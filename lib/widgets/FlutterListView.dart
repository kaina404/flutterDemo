import 'package:flutter/material.dart';
import 'dart:math';

class FlutterListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
        children: getListWidgets());
  }
}

//生成listview children Widgets
List<Widget> getListWidgets() {
  List<ItemData> list = List();
  Random random = Random();
  for (int i = 0; i < 100; i++) {
    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);
    list.add(ItemData(Color.fromARGB(255, r, g, b), i.toString()));
  }
  return list.map((item) => ListViewItem(item)).toList();
}

class ListViewItem extends StatelessWidget {
  final ItemData itemData;

  ListViewItem(this.itemData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      //ListTile可以作为listView的一种子组件类型，支持配置点击事件，一个拥有固定样式的Widget
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: itemData.color,
          child: Text(
            itemData.text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        title: Text(itemData.text),
      ),
    );
  }
}

class ItemData {
  final Color color;
  final String text;

  ItemData(this.color, this.text);
}
