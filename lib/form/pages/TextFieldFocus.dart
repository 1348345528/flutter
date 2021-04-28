import 'package:flutter/material.dart';

class TextFieldFocusDemoPage extends StatefulWidget {
  TextFieldFocusDemoPage({Key key}) : super(key: key);

  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldFocusDemoPage> {

   TextEditingController inputController;   
   String _username="lisi";
   var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  删除数据的时候光标在最后面示例demo
    inputController  = TextEditingController.fromValue(
      TextEditingValue(
        text: _username,
        selection: TextSelection.fromPosition(
          TextPosition(
            affinity: TextAffinity.downstream,
            offset:_username.length

          )
        )
        
      )
    );
    
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('删除数据光标在最后面演示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child:TextDemo() ,    
        child:Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              controller: inputController,
              onChanged: (value){
                 setState(() {
                    _username=value; 
                 });
              },
              
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码"
              ),             
              onChanged: (value){
                 setState(() {
                    this._password=value; 
                 });
              },
              
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: (){
                  print(this._username);
                  print(this._password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ) ,     
      )
    );
  }
}