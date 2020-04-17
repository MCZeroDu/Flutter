//引入适配库插件
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//设置初始化的方法
setInit(context){
  //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
  ScreenUtil.init(context, width: 750, height: 1380, allowFontScaling: true);
}

//设置宽度的方法
setHeight(double value){
  return ScreenUtil().setHeight(value);
}
//设置高度的方法setWidth(double value){
setWidth(value){  
   return ScreenUtil().setWidth(value);
}
//设置字体的大小
setFontSize(value){
  return ScreenUtil().setSp(value);
}
//获取设备的宽度
getScreenWidth(){
  return ScreenUtil.screenWidthDp;
}
//获取设备的高度
getScreeHeight(){
  return ScreenUtil.screenHeightDp;
}

getData(Object value){
    String val = 'dev'; 
    return val;
}