import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {

  var _username=new TextEditingController();   //初始化的时候给表单赋值
  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text='初始值';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child:TextDemo()
        child: Column(
          children: [
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              onChanged:(value){
                setState(() {
                  _username.text = value;
                });
              }
            ),
            SizedBox(height: 20),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "密码"
                ),
                onChanged:(value){
                  setState(() {
                    _password= value;
                  });
                }
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: (){
                    print("用户名："+_username.text);
                    print("密码："+_password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  
  
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('表单演示页面'),
  //     ),
  //     body: Padding(
  //       padding: EdgeInsets.all(20),
  //       // child:TextDemo() ,    
  //       child:Column(
  //         children: <Widget>[
  //           TextField(
  //             decoration: InputDecoration(
  //               hintText: "请输入用户名"
  //             ),
  //             controller: _username,
  //             onChanged: (value){
  //                setState(() {
  //                   _username.text=value; 
  //                });
  //             },
  //            
  //           ),
  //           SizedBox(height: 10),
  //           TextField(
  //             obscureText: true,
  //             decoration: InputDecoration(
  //               hintText: "密码"
  //             ),             
  //             onChanged: (value){
  //                setState(() {
  //                   this._password=value; 
  //                });
  //             },
  //            
  //           ),
  //           SizedBox(height: 40),
  //           Container(
  //             width: double.infinity,
  //             height: 40,
  //             child: RaisedButton(
  //               child: Text("登录"),
  //               onPressed: (){
  //                 print(this._username.text);
  //                 print(this._password);
  //               },
  //               color: Colors.blue,
  //               textColor: Colors.white,
  //             ),
  //           )
  //         ],
  //       ) ,     
  //     )
  //   );
  // }
}


class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // TextField(),
          SizedBox(height:20),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入搜索内容",
                border: OutlineInputBorder(
                )
            ),
          ),
          // SizedBox(height:20),
          // TextField(
          //   obscureText: true,
          //   decoration: InputDecoration(
          //       hintText: "密码框",
          //       border: OutlineInputBorder(
          //       )
          //   )
          // ),
          SizedBox(height:20),
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "用户名",
                icon: Icon(Icons.people),
              )
          ),
          SizedBox(height:20),
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "密码框",
                border: OutlineInputBorder(
                ),
                icon: Icon(Icons.lock),
              )
          ),
        ],
      ),
    );
    
  }
}