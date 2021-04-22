import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          toolbarHeight:50,
          title: Row(
            children: [
              Expanded(
                child:TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
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
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第五个tab"),
                ),
                ListTile(
                  title: Text("第五个tab"),
                ),
                ListTile(
                  title: Text("第五个tab"),
                ),
                ListTile(
                  title: Text("第五个tab"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第六个tab"),
                ),
                ListTile(
                  title: Text("第六个tab"),
                ),
                ListTile(
                  title: Text("第六个tab"),
                ),
                ListTile(
                  title: Text("第六个tab"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第七个tab"),
                ),
                ListTile(
                  title: Text("第七个tab"),
                ),
                ListTile(
                  title: Text("第七个tab"),
                ),
                ListTile(
                  title: Text("第七个tab"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第八个tab"),
                ),
                ListTile(
                  title: Text("第八个tab"),
                ),
                ListTile(
                  title: Text("第八个tab"),
                ),
                ListTile(
                  title: Text("第八个tab"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}