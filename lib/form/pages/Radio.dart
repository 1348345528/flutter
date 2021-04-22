import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  var sex = 1;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Text("男："),
            //     Radio(
            //       value: 1,
            //       onChanged: (v){
            //           setState(() {
            //             sex = v;
            //           });
            //       },
            //       groupValue: sex,
            //     ),
            //     Text("女："),
            //     Radio(
            //       value: 2,
            //       onChanged: (v){
            //         setState(() {
            //           sex = v;
            //         });
            //       },
            //       groupValue: sex,
            //     )
            //   ],
            // ),
            // Row(
            //   children: [
            //     Text("${this.sex}"),
            //     Text(sex==1?"男":"女")
            //   ],
            // ),
            SizedBox(height: 40),
            RadioListTile(
                value: 1,
                onChanged: (v){
                  setState(() {
                    this.sex = v;
                  });
                },
              groupValue: sex,
              title: Text("这是一级标题"),
              subtitle: Text("这是二级标题"),
              secondary: Icon(Icons.help),
              selected: sex==1,
            ),
            RadioListTile(
              value: 2,
              onChanged: (v){
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: sex,
              title: Text("这是一级标题2"),
              subtitle: Text("这是二级标题2"),
              secondary: Icon(Icons.help),
              selected: sex==2,
            ),
            SizedBox(height:40),
            Switch(
              value: flag,
              onChanged: (v){
                setState(() {
                  print(v);
                  this.flag =v ;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
