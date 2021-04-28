import 'dart:convert';

main(){
  var map = {"name":"张三","age":"20"};
  var json = "{'name':'李四','age':'20'}";
  print(jsonDecode(json));
  print(jsonEncode(map));
}

