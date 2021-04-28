import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _msg="";
  String _body = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //   Map userInfo={
    //     "username":"张三",
    //     "age":20
    //   };
    //  var a=json.encode(userInfo);  //把Map类型数据转换成json字符串

    //  print(userInfo is Map);

    //  print(a is String);

    // String userinfo='{"username":"zhangsan","age":20}';

    // Map u=json.decode(userinfo);    //把json字符串转化成Map类型

    // print(u["username"]);
  }

  //请求数据
  _getData() async {
    //获取数据的接口： https://jd.itying.com/api/httpGet   
    var apiUrl = Uri.parse('https://jd.itying.com/api/httpGet');
    var response = await http.get(apiUrl);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    print(response.body is String);

    setState(() {
      this._msg=json.decode(response.body)["msg"];
    });
  }

  //提交数据
  _postData() async {

    // https://jd.itying.com/api/httpPost
    var apiUrl = Uri.parse('https://jd.itying.com/api/httpPost');
    var response = await http.post(apiUrl,body: {"username":"张三111","age":"20"});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    print(response.body is String);
    setState(() {
      Map map=json.decode(response.body);
      _body = map["body"]["username"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [        
          Text(this._msg),  
          ElevatedButton(
            child: Text('Get请求数据'),
            onPressed: _getData,
          ),
          SizedBox(height: 20),
          Text(this._body),
          ElevatedButton(
            child: Text('Post提交数据'),
            onPressed: _postData,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Get请求数据 渲染数据'),
            onPressed: () {
              Navigator.pushNamed(context, '/http');
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
