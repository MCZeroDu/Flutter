import 'package:flutter/material.dart';
class loddingPage extends StatefulWidget {
  @override
  loddingState createState() =>new loddingState();
}

class loddingState extends State<loddingPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print('进入首页');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'http://video.maimaiplanet.com/wp-content/uploads/2019/07/1-1.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
