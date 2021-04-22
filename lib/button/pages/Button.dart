import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/AppBarDemo/main.dart';
import 'package:flutter_app2/wrap.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){

            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.blue,size: 30),
        backgroundColor: Colors.lightGreen,
        onPressed: (){
          print('FloatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("普通按钮1"),
                onPressed: (){
                  print("普通按钮1");
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text("普通按钮2"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print("普通按钮2");
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text("阴影按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
                onPressed: (){
                  print("阴影按钮");
                },
              ),
              RaisedButton.icon(
                  onPressed: (){

                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  icon: Icon(Icons.search),
                  label: Text("图标按钮")
              )
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 300,
                child: RaisedButton(
                  child: Text("宽度高度"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: (){
                    print("宽度高度");
                  },
                )
              )
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                      child: Text("圆角按钮"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      onPressed: (){
                        print("圆角按钮");
                      }
              ),
              Container(
                height: 80,
                child: RaisedButton(
                    child: Text("圆形按钮"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    splashColor: Colors.red,
                    shape: CircleBorder(
                        side: BorderSide(
                            color: Colors.white
                        )
                    ),
                    onPressed: (){
                      print("圆形按钮");
                    }
                )
              ),
              FlatButton(
                  child: Text("扁平按钮"),
                  color: Colors.blue,
                  textColor: Colors.yellow,
                  onPressed: (){
                    print('扁平按钮');
                  },
              ),
              SizedBox(width: 10),
              OutlineButton(
                child: Text("按钮"),
                // color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: (){
                  print("OutlineButton");
                },
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: OutlineButton(
                    child: Text("注册"),
                    onPressed: (){

                    },
                  )
                ),
              )
            ],
          ),
          Row(
            children: [
              ButtonBar(
                children: [
                  RaisedButton(
                    child: Text("登录"),
                    onPressed: (){
                      print("登录");
                    },
                  ),
                  SizedBox(width: 5),
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print("注册");
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

}

class MyButton extends StatelessWidget{
  final text;
  final pressed;
  final width;
  final height;

  const MyButton({Key key, this.text='', this.pressed, this.width, this.height}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      )
    );
  }

}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("按钮演示页面"),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: (){
//
//               },
//             )
//           ],
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Wrap(              
//               children: <Widget>[
//                 RaisedButton(
//                   child: Text('普通按钮'),
//                   onPressed: () {
//                     print("普通按钮");
//                   },
//                 ),
//                 SizedBox(width: 5),
//                 RaisedButton(
//                   child: Text('颜色按钮'),
//                   color: Colors.blue,
//                   textColor: Colors.white,
//                   onPressed: () {
//                     print("有颜色按钮");
//                   },
//                 ),
//                 SizedBox(width: 5),
//                 RaisedButton(
//                   child: Text('阴影按钮'),
//                   color: Colors.blue,
//                   textColor: Colors.white,
//                   elevation: 20,
//                   onPressed: () {
//                     print("有阴影按钮");
//                   },
//                 ),
//                 SizedBox(width: 5),
//                 RaisedButton.icon(
//                     icon: Icon(Icons.search),
//                     label: Text('图标按钮'),
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     // onPressed: null,
//                     onPressed: () {
//                       print("图标按钮");
//                     })
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   height: 50,
//                   width: 200,
//                   child: RaisedButton(
//                     child: Text('宽度高度'),
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     elevation: 20,
//                     onPressed: () {
//                       print("宽度高度");
//                     },
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     height: 60,
//                     margin: EdgeInsets.all(10),
//                     child: RaisedButton(
//                       child: Text('自适应按钮'),
//                       color: Colors.blue,
//                       textColor: Colors.white,
//                       elevation: 20,
//                       onPressed: () {
//                         print("自适应按钮");
//                       },
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 RaisedButton(
//                     child: Text('圆角按钮'),
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     elevation: 20,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     onPressed: () {
//                       print("圆角按钮");
//                     }),
//                 Container(
//                   height: 80,
//                   child: RaisedButton(
//                       child: Text('圆形按钮'),
//                       color: Colors.blue,
//                       textColor: Colors.white,
//                       elevation: 20,
//                       splashColor: Colors.red,
//                       shape:
//                           CircleBorder(side: BorderSide(color: Colors.white)),
//                       onPressed: () {
//                         print("圆形按钮");
//                       }),
//                 ),
//                 FlatButton(
//                   child: Text("按钮"),
//                   color: Colors.blue,
//                   textColor: Colors.yellow,
//                   onPressed: () {
//                     print('FlatButton');
//                   },
//                 ),
//                 SizedBox(width: 10),
//                 OutlineButton(
//                     child: Text("按钮"),
//                     //  color: Colors.red,  //没有效果
//                     //  textColor: Colors.yellow,
//                     onPressed: () {
//                       print('FlatButton');
//                     })
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(20),
//                     height: 50,
//                     child: OutlineButton(child: Text("注册"), onPressed: () {}),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 ButtonBar(
//                   children: <Widget>[
//
//                     RaisedButton(
//                       child: Text('登录'),
//                       color: Colors.blue,
//                       textColor: Colors.white,
//                       elevation: 20,
//                       onPressed: () {
//                         print("宽度高度");
//                       },
//                     ),
//                     RaisedButton(
//                       child: Text('注册'),
//                       color: Colors.blue,
//                       textColor: Colors.white,
//                       elevation: 20,
//                       onPressed: () {
//                         print("宽度高度");
//                       },
//                     ),
//                     MyButton(text: "自定义按钮",height: 60.0,width: 100.0,pressed: (){
//                       print('自定义按钮');
//                     })
//                    
//                   ],
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
//
//
// //自定义按钮组件
//
// class MyButton extends StatelessWidget {
//   final text;
//   @required final pressed;
//   final width;
//   final height;
//   const MyButton({this.text='',this.pressed,this.width=80,this.height=30}) ;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: this.height,
//       width: this.width,
//       child: RaisedButton(
//         child: Text(this.text),
//         onPressed:this.pressed ,
//       ),
//     );
//   }
// }