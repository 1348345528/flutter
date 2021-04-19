import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text("Flutter test")
          ),
          body: HomeContent(),
        ),
        theme:ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }
  
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Container(
          child:Text(
              "我是一个文本",
            textAlign: TextAlign.left,
            overflow: TextOverflow.clip,
            maxLines: 1,
            textScaleFactor:2,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.red,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              // decoration: TextDecoration.lineThrough,
              // decorationColor: Colors.white,
              // decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 5.0
            ),
          ),
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 2
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            ),
          ),
          padding: EdgeInsets.fromLTRB(10,30,5,0),
          margin: EdgeInsets.fromLTRB(10, 20, 30, 10),
          //transform: Matrix4.translationValues(100, 0, 0),
          // transform: Matrix4.rotationZ(0.3),
          // transform: Matrix4.diagonal3Values(1.2, 1, 1),
          // alignment: Alignment.bottomLeft,
          alignment: Alignment.topLeft,
        )
    );
  }
  
}