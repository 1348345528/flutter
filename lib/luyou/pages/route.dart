import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/luyou/pages/Form.dart';
import 'package:flutter_app2/luyou/pages/Search.dart';
import 'package:flutter_app2/luyou/pages/Tabs.dart';
import 'package:flutter_app2/luyou/pages/user/Login.dart';
import 'package:flutter_app2/luyou/pages/user/RegisterFirst.dart';
import 'package:flutter_app2/luyou/pages/user/RegisterSecond.dart';
import 'package:flutter_app2/luyou/pages/user/RegisterThird.dart';
import 'package:flutter_app2/luyou/pages/AppBarDemo.dart';

//配置路由
final routes = {
  '/':(context,{arguments}) => Tabs(),
  '/form': (context) => FormPage(),
  '/search': (context, {argumeents}) => SearchPage(argumeents),
  '/login':(context)=>LoginPage(),
  '/registerFirst':(context)=>RegisterFirstPage(),
  '/registerSecond':(context)=>RegisterSecondPage(),
  '/registerThird':(context)=>RegisterThirdPage(),
  '/appBarDemo':(context) =>AppBarDemoPage()
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, argumeents: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
// ignore: missing_return
  }
};
