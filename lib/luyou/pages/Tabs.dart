
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index ;

  Tabs({this.index = 0});

  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex=0;
  _TabsState(index){
    this._currentIndex = index;
  }
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,   //配置对应的索引值选中
          onTap: (int index){
              setState(() {  //改变状态
                  this._currentIndex=index;
              });
          },
          iconSize:36.0,      //icon的大小
          fixedColor:Colors.red,  //选中的颜色  
          type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:"首页"
              
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
               label:"分类"
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