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
    return AspectRatio(
        aspectRatio: 2,
        child: Container(
          color: Colors.red,
        ),
      );
  }

}