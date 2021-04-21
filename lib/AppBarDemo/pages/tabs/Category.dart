import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          toolbarHeight:50,
          title: Row(
            children: [
              Expanded(
                child:TabBar(
                  indicatorColor: Colors.white,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: "热门"),
                    Tab(text: "推荐"),
                    Tab(text: "内部"),
                    Tab(text: "外部"),
                  ],
                ),
              )
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
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第三个tab"),
                ),
                ListTile(
                  title: Text("第三个tab"),
                ),
                ListTile(
                  title: Text("第三个tab"),
                ),
                ListTile(
                  title: Text("第三个tab"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第四个tab"),
                ),
                ListTile(
                  title: Text("第四个tab"),
                ),
                ListTile(
                  title: Text("第四个tab"),
                ),
                ListTile(
                  title: Text("第四个tab"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}