import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  String title;

  MyDialog.name(this.title, this.content);

  String content;

  showTimer(context){
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 1500), (t) {
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    showTimer(context);
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.green,
          child:  Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Align(
                        child: Text(title),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  )
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(content,textAlign: TextAlign.left,),
              )
            ],
          ),
        )
      ),
    );
  }
}