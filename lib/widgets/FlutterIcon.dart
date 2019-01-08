import 'package:flutter/material.dart';

double _volume = 0.0;

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.volume_up),
        tooltip: 'Increase volume by 10%',
        onPressed: () {
          setState(() {
            _volume *= 1.1;
          });
        },
      ),
    );
  }
}
