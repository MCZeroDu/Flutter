import 'package:flutter/material.dart';
import '../pages/Home.dart';
import '../pages/farm.dart';

// 自定义 
class TabBarPage extends StatefulWidget{
  TabBarPage({Key key}):super(key:key);
  @override
    TabBarState createState() => TabBarState();
}

class TabBarState extends State<TabBarPage>{
    var _currtenIndex = 0;
    List pageList = [
        HomePage(),
        farmPages()
    ];
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title:Text("麦麦星球"),
          backgroundColor: Colors.greenAccent,
        ),
        body: pageList[this._currtenIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currtenIndex,
          onTap: (index){
            setState((){
              this._currtenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.category),title: Text("分类"))
          ],
        ),
      );
    }
}