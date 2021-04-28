import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _msg = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Device 或者设备信息'),
            onPressed: () {
              Navigator.pushNamed(context, '/device');
            },
          ),
          ElevatedButton(
            child: Text('Location 获取地理定位'),
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
