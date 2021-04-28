import 'package:flutter/material.dart';

import 'dart:async';
// import 'dart:io';
// import 'package:amap_flutter_location/amap_flutter_location.dart';
// import 'package:amap_flutter_location/amap_location_option.dart';
// import 'package:permission_handler/permission_handler.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key key}) : super(key: key);

  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  //获取数据
  // Map<String, Object> _locationResult;
  //
  String _latitude="";  //纬度
  String _longitude=""; //经度

  //监听定位
  StreamSubscription<Map<String, Object>> _locationListener;
  // //实例化插件
  // AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 动态申请定位权限
    requestPermission();

    // AMapFlutterLocation.setApiKey(
    //     "a8879945e0088a80b5aee427f4929cdc", "ios ApiKey");

    // ///注册定位结果监听
    // _locationListener = _locationPlugin
    //     .onLocationChanged()
    //     .listen((Map<String, Object> result) {
    //   setState(() {
    //     print(result);
    //     print("-----");
    //     print(result is Map);
    //     // _locationResult = result;
    //     _latitude=result["latitude"].toString();
    //     _longitude=result["longitude"].toString();
    //   });
    // });
  }

  @override
  void dispose() {
    super.dispose();

    ///移除定位监听
    if (null != _locationListener) {
      _locationListener.cancel();
    }

    // ///销毁定位
    // if (null != _locationPlugin) {
    //   _locationPlugin.destroy();
    // }
  }
  ///设置定位参数
  void _setLocationOption() {
    // if (null != _locationPlugin) {
    //   AMapLocationOption locationOption = new AMapLocationOption();
    //
    //   ///是否单次定位
    //   locationOption.onceLocation = false;
    //
    //   ///是否需要返回逆地理信息
    //   locationOption.needAddress = true;
    //
    //   ///逆地理信息的语言类型
    //   locationOption.geoLanguage = GeoLanguage.DEFAULT;
    //
    //   locationOption.desiredLocationAccuracyAuthorizationMode =
    //       AMapLocationAccuracyAuthorizationMode.ReduceAccuracy;
    //
    //   locationOption.fullAccuracyPurposeKey = "AMapLocationScene";
    //
    //   ///设置Android端连续定位的定位间隔
    //   locationOption.locationInterval = 2000;
    //
    //   ///设置Android端的定位模式<br>
    //   ///可选值：<br>
    //   ///<li>[AMapLocationMode.Battery_Saving]</li>
    //   ///<li>[AMapLocationMode.Device_Sensors]</li>
    //   ///<li>[AMapLocationMode.Hight_Accuracy]</li>
    //   locationOption.locationMode = AMapLocationMode.Hight_Accuracy;
    //
    //   ///设置iOS端的定位最小更新距离<br>
    //   locationOption.distanceFilter = -1;
    //
    //   ///设置iOS端期望的定位精度
    //   /// 可选值：<br>
    //   /// <li>[DesiredAccuracy.Best] 最高精度</li>
    //   /// <li>[DesiredAccuracy.BestForNavigation] 适用于导航场景的高精度 </li>
    //   /// <li>[DesiredAccuracy.NearestTenMeters] 10米 </li>
    //   /// <li>[DesiredAccuracy.Kilometer] 1000米</li>
    //   /// <li>[DesiredAccuracy.ThreeKilometers] 3000米</li>
    //   locationOption.desiredAccuracy = DesiredAccuracy.Best;
    //
    //   ///设置iOS端是否允许系统暂停定位
    //   locationOption.pausesLocationUpdatesAutomatically = false;
    //
    //   ///将定位参数设置给定位插件
    //   _locationPlugin.setLocationOption(locationOption);
    // }
  }

  ///开始定位
  void _startLocation() {
    // if (null != _locationPlugin) {
    //   ///开始定位之前设置定位参数
    //   _setLocationOption();
    //   _locationPlugin.startLocation();
    // }
  }

  /// 动态申请定位权限
  void requestPermission() async {
    // 申请权限
    bool hasLocationPermission = await requestLocationPermission();
    if (hasLocationPermission) {
      print("定位权限申请通过");
    } else {
      print("定位权限申请不通过");
    }
  }

  ///  申请定位权限  授予定位权限返回true， 否则返回false
  Future<bool> requestLocationPermission() async {
    // //获取当前的权限
    // var status = await Permission.location.status;
    // if (status == PermissionStatus.granted) {
    //   //已经授权
    //   return true;
    // } else {
    //   //未授权则发起一次申请
    //   status = await Permission.location.request();
    //   if (status == PermissionStatus.granted) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("地理定位演示"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //  latitude: 36.570091461155336, longitude: 109.5080830206976
          // 
            Text("纬度:${this._latitude}"),
            Text("经度:${this._longitude}"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('开始定位'),
              onPressed: () {
                this._startLocation();
              },
            ),           
          ],
        ),
      ),
    );
  }
}
