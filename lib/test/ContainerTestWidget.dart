import 'package:flutter/material.dart';

class ContainerTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("test"),
          Container(
            color: Colors.cyan,
            height: 200,
            child: Text('fjewiofj'),
          )
        ],
      ),
    );
  }
}
