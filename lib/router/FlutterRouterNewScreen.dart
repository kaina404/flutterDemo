import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: SafeArea(
          child: RaisedButton(
              child: Text("Navigator.push SecondPage"),
              onPressed: () {
                _navigateSecondPage(context);
              })),
    );
  }

//  void _navigateSecondPage(BuildContext context) {
//    //MaterialPageRoute({
//    //    @required this.builder,
//    //    RouteSettings settings,
//    //    this.maintainState = true,
//    //    bool fullscreenDialog = false,
//    //  })
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return SecondPage(value: '我是FirstPage带来的数据');
//    }));
//  }

  /// async关键字声明该函数内部有代码需要延迟执行
  ///  使用await会把延迟运算放入到延迟运算的队列（await）中。
  void _navigateSecondPage(BuildContext context) async {
    print('执行了_navigateSecondPage');
    final result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SecondPage();
    }));
    print('FirstPage收到数据：$result');
  }
}

class SecondPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: SafeArea(
          child: RaisedButton(
              child: Text("返回数据到FirstPage"),
              onPressed: () {
                _backCurrentPage(context);
              })),
    );
  }
}

///退出当前页面，返回到上一级页面
void _backCurrentPage(BuildContext context) {
  print('执行了_backCurrentPage');
  ///只有执行了这个方法，上级页面才会收到返回的数据
  Navigator.pop(context, '我是来自SecondPage的数据');
}

