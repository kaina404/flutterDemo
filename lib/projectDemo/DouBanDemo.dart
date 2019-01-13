import 'dart:convert' as Convert;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DouBanListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DouBanState();
  }
}

class DouBanState extends State<DouBanListView> {
  var subjects = [];

  getDouBan() async {
    var httpClient = new HttpClient();
    //http://api.douban.com/v2/movie/top250?start=25&count=10
    var uri = new Uri.http(
        'api.douban.com', '/v2/movie/top250', {'start': '0', 'count': '150'});
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(Convert.utf8.decoder).join();
    Map data = Convert.jsonDecode(responseBody);
    setState(() {
      subjects = data['subjects'];
    });
  }

  @override
  void initState() {
    getDouBan();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getContainer(),
    );
  }

  getItemView(var subject) {
    return Container(
      height: 200.0,
      child: Image.network(
        subject['images']['medium'],
      ),
    );
  }

  getContainer() {
    return ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (BuildContext context, int pos) {
          return Column(
            children: <Widget>[
              getItemContainerView(subjects[pos]),
              Container(
                height: 10,
                color: Color.fromARGB(255, 234, 233, 234),
              )
            ],
          );
        });
  }

  //肖申克的救赎(1993) View
  getTitleView(subject) {
    var title = subject['title'];
    var year = subject['year'];
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.play_circle_outline,
            color: Colors.redAccent,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text('($year)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey))
        ],
      ),
    );
  }

  getItemContainerView(var subject) {
    var imgUrl = subject['images']['medium'];
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[getImage(imgUrl), getMovieInfoView(subject)],
      ),
    );
  }

  //圆角图片
  getImage(var imgUrl) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      margin: EdgeInsets.only(left: 8, top: 3, right: 8, bottom: 3),
      height: 150.0,
      width: 100.0,
    );
  }

  getStaring(var stars) {
    return Row(
      children: <Widget>[RatingBar(stars), Text('$stars')],
    );
  }

  //电影标题，星标评分，演员简介Container
  getMovieInfoView(var subject) {
    var start = subject['rating']['average'];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          getTitleView(subject),
          RatingBar(start),
          DescWidget(subject)
        ],
      ),
    );
  }
}

class DescWidget extends StatelessWidget {
  var subject;

  DescWidget(this.subject);

  @override
  Widget build(BuildContext context) {
    var casts = subject['casts'];
    var sb = StringBuffer();
    var genres = subject['genres'];
    for (var i = 0; i < genres.length; i++) {
      sb.write('${genres[i]}  ');
    }
    sb.write("/ ");
    List<String> list = List.generate(
        casts.length, (int index) => casts[index]['name'].toString());

    for (var i = 0; i < list.length; i++) {
      sb.write('${list[i]} ');
    }
    return Container(
      width: 200,
      child: Text(
        sb.toString(),
        softWrap: true,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  double stars;

  RatingBar(this.stars);

  @override
  Widget build(BuildContext context) {
    List<Widget> startList = [];
    //实心星星
    var startNumber = stars ~/ 2;
    //半实心星星
    var startHalf = 0;
    if (stars.toString().contains('.')) {
      int tmp = int.parse((stars.toString().split('.')[1]));
      if (tmp >= 5) {
        startHalf = 1;
      }
    }
    //空心星星
    var startEmpty = 5 - startNumber - startHalf;

    for (var i = 0; i < startNumber; i++) {
      startList.add(Icon(
        Icons.star,
        color: Colors.amberAccent,
        size: 18,
      ));
    }
    if (startHalf > 0) {
      startList.add(Icon(
        Icons.star_half,
        color: Colors.amberAccent,
        size: 18,
      ));
    }
    for (var i = 0; i < startEmpty; i++) {
      startList.add(Icon(
        Icons.star_border,
        color: Colors.grey,
        size: 18,
      ));
    }
    startList.add(Text(
      '$stars',
      style: TextStyle(
        color: Colors.grey,
      ),
    ));
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: startList,
      ),
    );
  }
}
