import 'package:flutter_app2/commpent/home.dart';
import 'package:flutter_app2/commpent/from.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key key}) : super(key: key);
  BottomState createState() => BottomState();
}

List pageList;
class BottomState extends State<BottomPage> {
  var _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageList = [HomePage(), fromPage()];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green[600],
          selectedFontSize: 12.0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.network(
                  'http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/1b0f246aa5d1b48292bdec7b3f7d7098fe23d76c.png',
                  width: 26,
                  height: 26),
              icon: Image.network(
                  'http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/a4e493602dc94a10df548a6a7dde704d66970f87.png',
                  width: 26,
                  height: 26),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.network(
                  'http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/ff69ec9b98fb71924469110ea7f7452e52fe51f6.png',
                  width: 26,
                  height: 26),
              icon: Image.network(
                  'http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/31969221d15e099224de9437c2a875f462258f4e.png',
                  width: 26,
                  height: 26),
              title: Text('商品分类'),
            ),
          ]),
    );
  }
}
