import 'package:flutter/material.dart';

import 'package:flutter_app/projectDemo/DouBanDemo.dart';

class DouBanDetailScreen extends StatelessWidget {
  var subject;

  DouBanDetailScreen({Key key, @required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getItemContainerView(subject);
  }

  getItemContainerView(var subject) {
    var imgUrl = subject['images']['large'];
    return Container(
      color: Color.fromARGB(245, 255, 255, 255),
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 10.0,
        child: Column(
          //横向包裹
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Image.network(imgUrl),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: DescWidget(subject),
            )
          ],
        ),
      ),
    );
  }
}
