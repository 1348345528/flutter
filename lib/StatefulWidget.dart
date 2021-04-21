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
        body: HomePage(),
      ),
    );
  }

}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List list = List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: list.map((e){
            return ListTile(
              title: Text(e),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("点击"),
          onPressed: (){
              setState(() {
                list.add("新增数据一");
                list.add("新增数据二");
              });
          },
        )
      ],
    );
  }
}




// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int count =0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 200),
//         Chip(
//           label: Text("${count}"),
//         ),
//         SizedBox(height: 20,),
//         RaisedButton(
//           child: Text("点击"),
//           onPressed: (){
//             setState(() {
//               count++;
//             });
//             print(count);
//           },
//         )
//       ],
//     );
//   }
// }


// class HomePage extends StatefulWidget {
//   int countNum = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(height: 200),
//           Text("${this.countNum}"),
//           SizedBox(height: 20),
//           RaisedButton(
//             child: Text("点击"),
//             onPressed: (){
//                 this.countNum++;
//                 print(this.countNum);
//             },
//           )
//         ],
//       )
//     );
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
