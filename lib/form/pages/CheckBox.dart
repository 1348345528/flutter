import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

  var flag=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("checkbox"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: flag,
                  activeColor: Colors.red,
                  onChanged: (v){
                    setState(() {
                      flag = v;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text(this.flag?"选中":"未选中")
              ],
            ),
            SizedBox(height: 40),
            CheckboxListTile(
              value: flag,
              title: Text("这是一级标题"),
              subtitle: Text("这是二级标题"),
              onChanged: (v){
                setState(() {
                  flag =v;
                });
              },
            ),
            Divider(),
            CheckboxListTile(
              value: flag,
              title: Text("这是一级标题1"),
              subtitle: Text("这是二级标题2"),
              secondary: Icon(Icons.settings),
              onChanged: (v){
                setState(() {
                  flag =v;
                });
              },
            )
          ],
        )
    );
  }
}
