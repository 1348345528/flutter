
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/BottomNavigationBar/pages/tabs/Category.dart';
import 'package:flutter_app2/BottomNavigationBar/pages/tabs/Home.dart';
import 'package:flutter_app2/BottomNavigationBar/pages/tabs/Setting.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Tabs()
    );
  }

}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int currentIndex = 0;

  Widget w = HomeContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: w,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              currentIndex = index;
              if(0 == currentIndex){
                w = HomePage();
              }else if(1 == currentIndex){
                w = CategoryPage();
              }else if(2 == currentIndex){
                w = SettingPage();
              }else {
                w = HomeContent();
              }
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("首页")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text("分类")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("设置")
            )
          ]
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("");
  }

}