import 'package:flutter/material.dart';
import 'package:flutter_app2/luyou/pages/Tabs.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          // backgroundColor: Colors.red,
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          // actions: [
          //   IconButton(
          //       icon: Icon(Icons.search),
          //       onPressed: () {
          //         print('search');
          //       }),
          //   IconButton(
          //       icon: Icon(Icons.settings),
          //       onPressed: () {
          //         print('settings');
          //       })
          // ],
          bottom: TabBar(
            tabs: [
              Tab(text: "热门"),
              Tab(text: "推荐")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
