import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
    );
  }

}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child:   Container(
                  height: 180,
                  color: Colors.black,
                  child: Text('你好Flutter'),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover),

                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ) ;

  }

}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(this.icon, size: this.size, color: Colors.white)
      ),
    );
  }
}