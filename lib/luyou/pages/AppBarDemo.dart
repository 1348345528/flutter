

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title:Text('你好flutter'),
        ),
        body: Text('1111'),
      )
    );
  }
}
