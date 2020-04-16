import 'dart:io';
import 'package:flutter/material.dart';
import './bady.dart';
import './login.dart';
import './cart.dart';
import './router/router.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

//创建runApp要加载的组件
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  // 路由注册
  Widget build(BuildContext context) {
    return MaterialApp(
      //定义主页加载的组件为Scaffold
      // home: HomePage(),
      title: '',
      theme: mDefaultTheme,
      routes: {
        '/bady': (context) => badyPage(),
        '/cart': (context) => cartPage(),
        '/login': (context) => loginPage()
        // '/cartList':(context) => fromPage()
      },
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
    );
  }
}

final ThemeData mDefaultTheme = new ThemeData(
    primaryColor: Colors.green[600],
    scaffoldBackgroundColor: Color(0XFFebebeb),
    cardColor: Colors.green,
    brightness: Brightness.light);
