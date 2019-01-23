import 'package:flutter/material.dart';

//列表支持水平区域水平滚动，垂直区域垂直滚动。
class FlutterSliverToBoxAdapter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            height: 140.0,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text("SliverToBoxAdapter${index}");
              },
              itemCount: 40,
              scrollDirection: Axis.horizontal,//水平滚动
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Text("SliverList${index}");
          }, childCount: 150),
        )
      ],
    )),);
  }
}
