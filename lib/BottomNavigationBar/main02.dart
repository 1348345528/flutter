import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs()
    );
  }
}


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: Text("tabBar"),
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: 1,
          onTap: (int index){
              print(index);
          },
          items: [
           BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页"   //老版本的Flutter使用title 用法： title: Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类"             
            ),            
            BottomNavigationBarItem(
               icon: Icon(Icons.settings),
               label: "设置"                 
            )
          ],
        ),
      );
  }
}