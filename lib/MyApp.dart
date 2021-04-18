import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Flutter Demo")
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
        child:Text(
          "Hello World!",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.red
          ),
        )
    );
  }
  
}