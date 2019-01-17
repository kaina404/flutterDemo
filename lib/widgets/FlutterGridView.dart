import 'package:flutter/material.dart';

class FlutterGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> datas = getDataList();
    return GridView.builder(
      itemCount: datas.length,
      itemBuilder: (BuildContext context, int index) {
        return getItemContainer(datas[index]);
      },
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //单个子Widget的水平最大宽度
        maxCrossAxisExtent: 100,
        //垂直单个子Widget之间间距
        mainAxisSpacing: 20.0,
        //水平单个子Widget之间间距
        crossAxisSpacing: 0.0
      ),
    );
  }

  //GridView写法二

//  @override
//  Widget build(BuildContext context) {
//    List<String> datas = getDataList();
//    return GridView.builder(
//        itemCount: datas.length,
//        //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          //横轴元素个数
//            crossAxisCount: 3,
//            //纵轴间距
//            mainAxisSpacing: 20.0,
//            //横轴间距
//            crossAxisSpacing: 10.0,
//            //子组件宽高长度比例
//            childAspectRatio: 2.0),
//        itemBuilder: (BuildContext context, int index) {
//          //Widget Function(BuildContext context, int index)
//          return getItemContainer(datas[index]);
//        });
//  }

  //GridView写法一

//  @override
//  Widget build(BuildContext context) {
//    return GridView.count(
//      //水平子Widget之间间距
//      crossAxisSpacing: 10.0,
//      //垂直子Widget之间间距
//      mainAxisSpacing: 30.0,
//      //GridView内边距
//      padding: EdgeInsets.all(10.0),
//      //一行的Widget数量
//      crossAxisCount: 2,
//      //子Widget宽高比例
//      childAspectRatio: 2.0,
//      //子Widget列表
//      children: getWidgetList(),
//    );
//  }

  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(String item) {
    return Container(
      width: 5.0,
      height: 5.0,
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }
}
