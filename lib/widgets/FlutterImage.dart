import 'package:flutter/material.dart';
import 'dart:io';

class FlutterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.network(
      "http://img2018.cnblogs.com/news/66372/201809/66372-20180921155512352-228425089.jpg",
      color: Colors.blue,
      colorBlendMode: BlendMode.saturation,
    ));
  }
}

//显示网络图片：Image.network("https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
//加载File图片： Image.file(File("/sdcard/flutter.jpeg")), 注意在AndroidManifest.xml中配置读写文件权限。
