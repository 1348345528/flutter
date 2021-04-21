import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  final argumeents;


  SearchPage(this.argumeents);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text("搜索页面"),
      ) ,
      body: Text("搜索页面内容区域${argumeents !=null? argumeents['id']:'0'}"),
    );
  }
}
