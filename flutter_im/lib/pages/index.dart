import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  HomeState createState() => HomeState();
}

//渲染某个菜单项，传入菜单标题，图片路径或图片
_popupMenuItem(context, String title, String path,
    {String imagePath, IconData icon}) {
  return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
              ? Image.asset(
                  imagePath,
                  width: 32.0,
                  height: 32.0,
                )
              : SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: Icon(
                    icon,
                    color: Colors.black38,
                  )),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, path);
              },
              child: Container(
                // color: Colors.amber,
                width: 100.0,
                // height: 80.0,
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    height: 2,
                  ),
                ),
              )),
        ],
      ));
}

class HomeState extends State<HomePage> {
  //当前选中页面索引
  var _currentIndex = 0;
  // MessagePage message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'friends');
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 10.0),
            child: GestureDetector(
              onTap: () {
                // showMenu(context: null, position: null, items: null);
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem(context, '分类', 'message',
                          icon: Icons.verified_user),
                      _popupMenuItem(context, '发起会话', 'friends',
                          icon: Icons.person_pin),
                      _popupMenuItem(context, '发起会话', '', icon: Icons.person),
                    ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 100.0,
              height: 30.0,
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
