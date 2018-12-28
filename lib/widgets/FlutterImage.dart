import 'package:flutter/material.dart';
import 'dart:io';

class FlutterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.network(
      "https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240",
          width: 400,
          height: 400,
          fit: BoxFit.contain,
          centerSlice: Rect.fromLTWH(10, 10, 10, 10),
    ));
  }
}

//显示网络图片：Image.network("https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
//加载File图片： Image.file(File("/sdcard/flutter.jpeg")), 注意在AndroidManifest.xml中配置读写文件权限。

//centerSlice//////////////
//Image.network(
//      "https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240",
//          width: 400,
//          height: 400,
//          fit: BoxFit.contain,
//          centerSlice: Rect.fromLTWH(10, 10, 10, 10),
//    )