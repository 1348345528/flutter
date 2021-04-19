import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
    );
  }

}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.blue,
            size: 20,
          ),
          title: Text(
            '419是真的吗?',
            style: TextStyle(
                fontSize: 24
            ),
          ),
          subtitle: Text("且看明日分晓"),
        ),
        ListTile(
          leading: Image.asset('images/dingdang.jpg'),
          title: Text(
            '明天还会涨吗?',
            style: TextStyle(
                fontSize: 24
            ),
          ),
          subtitle: Text("这个我不知道"),
        )
      ],
    );
  }

}