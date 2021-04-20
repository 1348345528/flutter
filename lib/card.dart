import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/AspectRatio/res/listData.dart';

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

  List<Widget> getData(){
    List<Widget> list = List();
   listData.forEach((element) {
      Widget card =  Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(element["imageUrl"],fit: BoxFit.cover),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage:NetworkImage(element["imageUrl"]
                ),
              ),
              title: Text(element["title"]),
              subtitle: Text(
                  element["description"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      );
      list.add(card);
   });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: getData()
    );
  }

}