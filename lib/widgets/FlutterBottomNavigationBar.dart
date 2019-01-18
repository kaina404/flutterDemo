import 'package:flutter/material.dart';

class FlutterBottomNavigationBar extends StatefulWidget {
  FlutterBottomNavigationBar({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FlutterBottomNavigationBar();
  }
}

class _FlutterBottomNavigationBar extends State<FlutterBottomNavigationBar> {
  final List<Widget> pages = [Page1(), Page2(), Page3()];

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
//    Key key,
//    this.appBar,
//    this.body,
//    this.floatingActionButton,
//    this.floatingActionButtonLocation,
//    this.floatingActionButtonAnimator,
//    this.persistentFooterButtons,
//    this.drawer,
//    this.endDrawer,
//    this.bottomNavigationBar,
//    this.bottomSheet,
//    this.backgroundColor,
//    this.resizeToAvoidBottomPadding = true,
//    this.primary = true,
    return Scaffold(
      body: pages[_selectIndex],
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
//        List<BottomNavigationBarItem>
//        @required this.icon,
//    this.title,
//    Widget activeIcon,
//    this.backgroundColor,
      backgroundColor: Color.fromARGB(245, 255, 255, 255),
      bottomNavigationBar: BottomNavigationBar(
        items: [
//        BottomNavigationBarItem({
        //默认图标样式
//        @required this.icon,
//        this.title,
        //选中的图标样式
//        Widget activeIcon,
        //背景色
//        this.backgroundColor,
//        })
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text('首页'),
              activeIcon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie,
                  color: Colors.black),
              title: Text('影院'),
              activeIcon: Icon(
                Icons.movie,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: Colors.black),
              title: Text('我的'),
              activeIcon: Icon(
                Icons.person,
              )),
        ],
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        //图标大小
        iconSize: 24,
        //当前选中的索引
        currentIndex: _selectIndex,
        //选中后，导航栏内容的颜色（仅当type: BottomNavigationBarType.fixed,时生效）
        fixedColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page3'),
    );
  }
}
