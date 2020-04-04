import 'package:flutter/material.dart';
import 'package:flutter_app2/bady.dart';
import 'package:flutter_app2/cart.dart';
import 'package:flutter_app2/commpent/router/router.dart';
// import 'package:url_launcher/url_launcher.dart';
void main() => runApp(MyApp());

//创建runApp要加载的组件
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  // 路由注册
  Widget build(BuildContext context) {
    return MaterialApp(
      //定义主页加载的组件为Scaffold
      // home: HomePage(),
      routes: {
        '/bady': (context) => badyPage(),
        '/cart': (context) => cartPage(),
        // '/cartList':(context) => fromPage() 
      },
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
    );
  }
}