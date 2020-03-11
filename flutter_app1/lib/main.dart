// 引入flutter/material.dart 基本样式
import 'package:flutter/material.dart';
import './router/router.dart';
//入口方法
void main() => runApp(MyApp());
// 声明Myapp 继承 StatelessWidget
class MyApp extends StatelessWidget{
const MyApp ({Key key}):super(key: key);
 @override
 Widget build(BuildContext context){
   return MaterialApp(
     initialRoute: '/',
     onGenerateRoute: roeter,
   );
 }
}
