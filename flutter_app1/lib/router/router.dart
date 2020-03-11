import 'package:flutter/material.dart';
import '../commpons/bulidContext.dart';

var routers = {
  "/" : (context) => TabBarPage()
};
// 固定写法
var roeter = (RouteSettings settings){
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if(pageContentBuilder != null){
    if(settings.arguments != null){
      final Route route = MaterialPageRoute(builder: (context)=> pageContentBuilder(context,arguments:settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(builder: (context)=>pageContentBuilder(context));
      return route;
    }
  }
};