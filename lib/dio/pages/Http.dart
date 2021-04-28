import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class HttpDemo extends StatefulWidget {
  HttpDemo({Key key}) : super(key: key);

  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  List _list=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }
  _getData() async{
    //地址： https://jd.itying.com/api/pcate      
    
     var response = await Dio().get('https://jd.itying.com/api/pcate');  
     print(response.data);
     print(response.statusCode);
     if(response.statusCode==200){
       setState(() {
         this._list=response.data["result"];
       });
     }else{
       print(response.statusCode);
     }
       
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("请求数据Demo-Dio"),
      ),
      body:this._list.length>0?ListView(
        children: this._list.map((value){
          return ListTile(title: Text(value["title"]));
        }).toList(),
      ):Text("")
    );
  }
}