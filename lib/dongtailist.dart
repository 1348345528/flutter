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

List listData=[
  {
    "title":"阿里",
    "author":"马云",
    "image":"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=125336873,1368905359&fm=26&gp=0.jpg"
  },
  {
    "title":"京东",
    "author":"刘强东",
    "image":"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=834608477,2177611021&fm=26&gp=0.jpg"
  },
  {
    "title":"腾讯",
    "author":"马化腾",
    "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Fface%2Fd5a62b0084c87a5d18b5297cf89faaf00eba5e1c.jpg&refer=http%3A%2F%2Fi0.hdslb.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621432363&t=e1e927d1b1038da56e67e1ef588ced9d"
  },
];

class HomeContent extends StatelessWidget{

  List<Widget> getData(){
    var listTile = listData.map((value){
      return ListTile(
        leading: Image.network(
            value["image"],
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
        title: Text(value["title"]),
        subtitle: Text(value["author"])
      );
    });
    return listTile.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: getData(),
    );
  }

}