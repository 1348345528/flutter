
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
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
    var apiUrl = Uri.parse('https://jd.itying.com/api/pcate');
    
    var response = await http.get(apiUrl);
    if(response.statusCode==200){
        print(json.decode(response.body));
        setState(() {
          this._list=json.decode(response.body)["result"];
        });

    }else{
      print(response.statusCode);
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("请求数据Demo"),
      ),
      body:this._list.length>0?ListView.builder(
        itemCount:this._list.length ,
        itemBuilder: (context,index){
          return ListTile(title: Text(this._list[index]["title"]));
        },
      ):Text("")
    );
  }
}