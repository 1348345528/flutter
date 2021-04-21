import 'package:flutter/material.dart';
import 'package:flutter_app2/luyou/pages/Form.dart';
import 'package:flutter_app2/luyou/pages/Search.dart';
import 'package:flutter_app2/luyou/pages/route.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  final routes ={
    '/form':(context) =>FormPage(),
    '/search':(context,{argumeents}) => SearchPage(argumeents)
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute
    );
  }
}
