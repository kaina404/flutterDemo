import 'package:flutter/material.dart';
import 'dart:math';

class FlutterListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: getListWidgets());
  }
}

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
