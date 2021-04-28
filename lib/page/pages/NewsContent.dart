
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NewsContent extends StatefulWidget {
  Map arguments;

  @override
  _NewsContentState createState() => _NewsContentState();

  NewsContent({this.arguments});
}

class _NewsContentState extends State<NewsContent> {
  bool flag = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新闻详情"),
      ),
      body: Column(
        children: [
          flag?_getMoreWidget():Text(""),
          Expanded(
              child: InAppWebView(
                initialUrl: "http://www.phonegap100.com/newscontent.php?aid=${widget.arguments["aid"]}",
                onProgressChanged: (InAppWebViewController controller,int progress){
                  print("time++++++++"+ (progress/100).toString());
                  if(progress/100>0.9999){
                    setState(() {
                      flag = false;
                    });
                  }
                },
              )
          )
        ],
      ),
    );
  }

  Widget _getMoreWidget() {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '加载中...',
                style: TextStyle(fontSize: 16.0),
              ),
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
  }
}
