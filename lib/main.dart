import 'package:flutter/material.dart';
import 'package:flutter_app/FlutterApp.dart';
import 'package:flutter_app/widgets/FlutterPopupMenuButton.dart';
import 'package:flutter_app/router/FlutterRouterNewScreen.dart';
import 'package:flutter_app/router/FlutterHero.dart';
import 'package:flutter_app/widgets/FlutterBottomNavigationBar.dart';
import 'package:flutter_app/widgets/FlutterTabBar.dart';
import 'package:flutter_app/widgets/FlutterStack.dart';
import 'package:flutter_app/router/NamedRouter.dart';
import 'package:flutter_app/widgets/scrollView/FlutterSliverToBoxAdapter.dart';
import 'package:flutter_app/widgets/scrollView/FlutterCustomScrollView.dart';
import 'package:flutter_app/widgets/scrollView/FlutterNestedScrollView.dart';
import 'package:flutter_app/widgets/FlutterSliverAppBar.dart';
import 'package:flutter_app/widgets/sliver/sliver_expanded_appbar.dart';
import 'package:flutter_app/widgets/sliver/sliver_box.dart';
import 'package:flutter_app/widgets/sliver/sliver_grid.dart';
import 'package:flutter_app/widgets/sliver/sliver_header.dart';
import 'package:flutter_app/widgets/sliver/sliver_list.dart';
import 'package:flutter_app/widgets/sliver/sliver_menu.dart';
import 'package:flutter_app/widgets/bottom_drag_widget.dart';

void main() => runApp(MyApp());
List<String> urls = [
  'http://img1.doubanio.com/view/photo/s_ratio_poster/public/p480747492.webp',
  'http://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910813120.webp',
  'http://img1.doubanio.com/view/photo/s_ratio_poster/public/p511118051.webp',
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      home: FlutterStack(urls: urls, w: 140.0,),
      home: Scaffold(body: Demo(),),
    );
  }
}


/// DragController controller = DragController();
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return BottomDragWidget(
        body: Container(
          color: Colors.brown,
          child: ListView.builder(itemBuilder: (BuildContext context, int index){
            return Text('我是listview下面一层的东东，index=$index');
          }, itemCount: 100,),
        ),
        dragContainer: DragContainer(
          drawer: getListView(),
          defaultShowHeight: 150.0,
          height: 700.0,
        ));
  }

  Widget getListView() {
    return Container(
      height:600.0,

      ///总高度
      color: Colors.amberAccent,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.deepOrangeAccent,
            height: 10.0,
          ),
          Expanded(child: newListView())
        ],
      ),
    );
  }

  Widget newListView() {
    return OverscrollNotificationWidget(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Text('data=$index');
        },
        itemCount: 100,
        ///这个属性是用来断定滚动的部件的物理特性，例如：
        ///scrollStart
        ///ScrollUpdate
        ///Overscroll
        ///ScrollEnd
        ///在Android和ios等平台，其默认值是不同的。我们可以在scroll_configuration.dart中看到如下配置

///下面代码是我在翻源码找到的解决方案
/// The scroll physics to use for the platform given by [getPlatform].
        ///
        /// Defaults to [BouncingScrollPhysics] on iOS and [ClampingScrollPhysics] on
        /// Android.
//  ScrollPhysics getScrollPhysics(BuildContext context) {
//    switch (getPlatform(context)) {
//    case TargetPlatform.iOS:/*/
//         return const BouncingScrollPhysics();
//    case TargetPlatform.android:
//    case TargetPlatform.fuchsia:
//        return const ClampingScrollPhysics();
//    }
//    return null;
//  }
        ///在ios中，默认返回BouncingScrollPhysics，对于[BouncingScrollPhysics]而言，
        ///由于   double applyBoundaryConditions(ScrollMetrics position, double value) => 0.0;
        ///会导致：当listview的第一条目显示时，继续下拉时，不会调用上面提到的Overscroll监听。
        ///故这里，设定为[ClampingScrollPhysics]
        physics: const ClampingScrollPhysics(),
      ),
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ' Hello  You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
