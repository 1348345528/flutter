
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 8, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print(_tabController.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPag"),
        bottom: TabBar(
          isScrollable: true,
          controller: this._tabController,
          tabs: [
            Tab(text: "热门"),
            Tab(text: "推荐"),
            Tab(text: "内部"),
            Tab(text: "外部"),
            Tab(text: "顶部"),
            Tab(text: "头部"),
            Tab(text: "底部"),
            Tab(text: "尾部"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("热门")),
          Center(child: Text("推荐")),
          Center(child: Text("内部")),
          Center(child: Text("外部")),
          Center(child: Text("顶部")),
          Center(child: Text("头部")),
          Center(child: Text("底部")),
          Center(child: Text("尾部"))
        ],
      )
    );
  }
}
