import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        body: new Stack(
          children: <Widget>[
            new Container(
              child: new Image.network(
                "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1275226470,47630191&fm=26&gp=0.jpg",
                fit: BoxFit.fill,
              ),
            ),
            new Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.fromLTRB(0.0, 45.0, 10.0, 0.0),
              child: OutlineButton(
                child: new Text(
                  "跳过",
                  textAlign: TextAlign.center,
                  style: new TextStyle(color: Colors.white),
                ),
                // StadiumBorder椭圆的形状
                shape: new StadiumBorder(),
                onPressed: () {
                  go2HomePage();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countDown();
  }

  // 倒计时
  void countDown() {
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration, go2HomePage);
  }
  void go2HomePage() {
    Navigator.pushReplacementNamed(context, '/HomePage');
  }
}
