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
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        // runAlignment: WrapAlignment.center ,
        direction: Axis.vertical,
        children: [
          MyBotton("遮天"),
          MyBotton("斗破苍穹"),
          MyBotton("大主宰"),
          MyBotton("元尊"),
          MyBotton("一念永恒"),
          MyBotton("圣墟"),
          MyBotton("伏天氏"),
          MyBotton("网游之天下无敌"),
          MyBotton("将夜")
        ],
      )
    );
  }
}

class MyBotton extends StatelessWidget{

  final String text;

  const MyBotton(this.text,{Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      textColor: Theme.of(context).accentColor,
      onPressed: (){
      },
      child: Text(this.text),
    );
  }

}