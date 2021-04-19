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
    return Container(
      height: 180,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              width: 80,
              height: 80,
              color: Colors.red,
              child: ListView(
                children: <Widget>[
                 Text(
                   "我是第一个"
                 ),
                Text(
                    "我是第二个"
                ),
                Text(
                    "我是第三个"
                )
                ],
              ),
          ),
          Container(
              width: 80,
              height: 80,
              color: Colors.orange
          ),
          Container(
              width: 80,
              height: 80,
              color: Colors.green
          ),
          Container(
              width: 80,
              height: 80,
              color: Colors.blue
          ),
        ],
      )
    );
  }

}