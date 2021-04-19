import 'package:flutter/material.dart';

class Images extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text("Flutter Image Demo")
          ),
          body: ImageBody(),
          backgroundColor: Colors.blue,
        ),
        theme:ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }
}

class ImageBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        // child: Image.network(
        //     "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ffjmingfeng.com%2Fimg%2F1%2F3754356851%2F62%2Fb0608f371234f5835be44e99d4abbcd0%2F7224404611%2F6040359192.jpg&refer=http%3A%2F%2Ffjmingfeng.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621416934&t=ca67e78f8297593edbf4fd39d906dc42",
        //     alignment: Alignment.topLeft,
        //     color: Colors.blue,
        //     colorBlendMode: BlendMode.colorBurn,
        //     // fit: BoxFit.fill,
        //     // repeat: ImageRepeat.repeatY,
        // ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150)
          // )
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ffjmingfeng.com%2Fimg%2F1%2F3754356851%2F62%2Fb0608f371234f5835be44e99d4abbcd0%2F7224404611%2F6040359192.jpg&refer=http%3A%2F%2Ffjmingfeng.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621416934&t=ca67e78f8297593edbf4fd39d906dc42"),
            fit: BoxFit.cover
          )
        ),
      ),

    );
  }

}