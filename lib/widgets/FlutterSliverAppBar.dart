import 'package:flutter/material.dart';

class FlutterSliverAppBar extends StatelessWidget {
  /// 如果没有leading，automaticallyImplyLeading为true，就会默认返回箭头
  /// 如果 没有leading 且为false，空间留给title
  /// 如果有leading，这个参数就无效了
//  automaticallyImplyLeading: true,
//  // title: Text('大标题'), //标题
//  centerTitle: true, //标题是否居中
//  actions: [Icon(Icons.archive)], //右侧的内容和点击事件啥的
//  elevation: 4, //阴影的高度
//  forceElevated: false, //是否显示阴影
//  backgroundColor: Colors.green, //背景颜色
//  brightness: Brightness.dark, //黑底白字，lignt 白底黑字
//  iconTheme: IconThemeData(
//  color: Colors.red,
//  size: 30,
//  opacity: 1), //所有的icon的样式,不仅仅是左侧的，右侧的也会改变
//  textTheme: TextTheme(), //字体样式
//  primary: true, // appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
//  titleSpacing: 16, //标题两边的空白区域
//  expandedHeight: 200.0, //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
//  floating: false, //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
//  pinned: true, //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
//  snap:
//  false, //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，向上滑动整个导航栏的内容就会消失

  @override
  Widget build(BuildContext context) {
    var url =
        "https://upload-images.jianshu.io/upload_images/3884536-0a4766ccd55f287a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp";
    var children = <Widget>[
      ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Text("$index");
        },
        itemCount: 100,
      )
    ];

    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar text'),
            expandedHeight: 200.0,
            actions: <Widget>[Text("actions"), Text("actions2")],
            pinned: true,
            backgroundColor: Colors.indigo,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.black26,
                width: double.infinity,
                height: 60.0,
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 1000.0,
          )
        ],
      )),
    );
  }
}
