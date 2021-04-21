import 'package:flutter/material.dart';
import 'package:flutter_app2/luyou/pages/Form.dart';
import 'package:flutter_app2/luyou/pages/Search.dart';

import 'pages/Tabs.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  final routes ={
    '/form':(context) =>FormPage(),
    '/search':(context,{argumeents}) => SearchPage(argumeents)
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs(),
      onGenerateRoute: (RouteSettings settings){
          final String name = settings.name;
          final Function pageContentBuilder = this.routes[name];
          if(pageContentBuilder != null){
            if(settings.arguments!=null){
              final Route route = MaterialPageRoute(
                  builder: (context) =>
                      pageContentBuilder(context,argumeents:settings.arguments)
              );
              return route;
            }else{
              final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context)
              );
              return route;
            }
          // ignore: missing_return
          }
      },
    );
  }
}
