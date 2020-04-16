import 'package:flutter/material.dart';
import 'pages/index.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'pages/Lodding.dart';
import 'pages/message.dart';
import 'commponter/bottomBar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loddingPage(),
      routes: <String, WidgetBuilder>{
        'app': (context) => new BottomPage(),
        'friends': (_) => WebviewScaffold(
              url: 'https://github.com/qinshige/Flutter',
              appBar: new AppBar(
                title: new Text("Git"),
              ),
              withZoom: true,
              withLocalStorage: true,
            ),
        'message':(context) => new MessagePage()
      },
      theme: ThemeData(
        primaryColor: Colors.blue[100],
        // scaffoldBackgroundColor: Color
      ),
    );
  }
}
