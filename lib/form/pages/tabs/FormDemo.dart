import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {

  String userName;
  int sex =1;
  String info = "";
  List hobby =[
    {
    "checked":true,
    "title":"吃饭"
    },
    {
      "checked":false,
      "title":"睡觉"
    },
    {
      "checked":true,
      "title":"打游戏"
    },
    {
      "checked":false,
      "title":"写代码"
    },
  ];

  List<Widget> gethabby(){
    List<Widget> tempList = [];
    hobby.forEach((element) {
      tempList.add(
        Row(
          children: [
            Text(element["title"]+":"),
            Checkbox(
              value: element["checked"],
              onChanged: (v){
                setState(() {
                  element["checked"] =v;
                });
              },
            )
          ],
        )
      );
    });
    return tempList;
  }

  void setSex(v){
    setState(() {
      sex = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员信息登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "输入用户信息"
              ),
              onChanged: (v){
                setState(() {
                  this.userName =v;
                });
              },
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("男"),
                Radio(
                  value: 1,
                  onChanged: setSex,
                  groupValue: sex,
                ),
                SizedBox(width: 10),
                Text("女"),
                Radio(
                  value: 2,
                  onChanged: setSex,
                  groupValue: sex,
                )
              ],
            ),
            SizedBox(height: 10),
            Wrap(
              children: gethabby(),
            ),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                  hintText: "输入文本",
                border: OutlineInputBorder()
              ),
              onChanged: (value){
                setState(() {
                  this.info = value;
                });
              },
            ),

            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("提交信息"),
                onPressed: (){
                  print(sex);
                  print(userName);
                  print(hobby);
                  print(info);
                },
                color:Colors.blue,
                textColor: Colors.white,
              )
            )
          ],
        ),
      ),
    );
  }
}
