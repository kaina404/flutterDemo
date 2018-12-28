import 'package:flutter/material.dart';
import 'dart:io';
//博客地址：https://www.jianshu.com/p/68879dd00f81
class FlutterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var img = Image.network(
      "https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240",
      repeat: ImageRepeat.repeatY,
    );
    return Scaffold(
      body: Container(
        child: img,
        constraints: BoxConstraints.expand(//对Image的约束
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height),
      ),
    );
  }
}

//显示网络图片：Image.network("https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
//加载File图片： Image.file(File("/sdcard/flutter.jpeg")), 注意在AndroidManifest.xml中配置读写文件权限。

//centerSlice//////////////
//Image.network("
//https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240
//"
//,
//width: 400
//,
//height: 400
//,
//fit: BoxFit.contain,centerSlice: Rect.fromLTWH(10, 10, 10, 10),
//)

//matchTextDirection/////////////

//var img = Image.network(
//  "https://upload-images.jianshu.io/upload_images/3884536-0a4766ccd55f287a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
//  matchTextDirection: true,
//);
//
//var center = Center(
//    child: ListView(
//      children: <Widget>[
//        Directionality(
//          textDirection: TextDirection.ltr,
//          child: img,
//        ),
//        Directionality(
//          textDirection: TextDirection.rtl,
//          child: img,
//        )
//      ],
//    ));
//
//return Scaffold(
//body: center,
//);


//repeat
//var img = Image.network(
//  "https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240",
//  width: 50,
//  height: 50,
//  fit: BoxFit.scaleDown,
//  repeat: ImageRepeat.repeat,
//);
//return Scaffold(
//body: Container(
//child: img,
//constraints: BoxConstraints.expand(//对Image的约束
//width: MediaQuery.of(context).size.width,
//height: MediaQuery.of(context).size.height),
//),
//);