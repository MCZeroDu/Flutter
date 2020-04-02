import 'package:flutter/material.dart';
import 'package:flutter_app2/utils/screen.dart';

class fromPage extends StatefulWidget {
  fromPage({Key key}) : super(key: key);
  fromPageState createState() => fromPageState();
  // State<StatefulWidget> createState()=> fromPageState();
}

String carName;
var where;
var color = Colors.black;
var isShows;
int index;
class fromPageState extends State<fromPage> {
  @override
  void initState() {
    super.initState();
    carName = '上衣';
    color = Colors.black12;
    where = loveProductList
        .where((loveProductList) => loveProductList['title'] == carName);
  }

  Widget build(BuildContext context) {
    setInit(context);
    var mesg = loveProductList
        .map((loveProductList) => loveProductList['title'])
        .toList();
    var dedu = new Set();
    dedu.addAll(mesg);
    List list = dedu.toList();
    return Scaffold(
        //  bottomNavigationBar: ,
        appBar: AppBar(
          title: Text('集市'),
          centerTitle: true,
          backgroundColor: Colors.green[700],
        ),
        body: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: setWidth(220),
                // height: setHeight(1050),
                color: Colors.black12,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, index) {
                      return CartListClassName(index, list);
                    }),
              ),
              Container(
                width: setWidth(500),
                // height: setHeight(1050),
                color: Colors.white54,
                child: ListView(
                  children: <Widget>[CrtList(context)],
                ),
              )
            ],
          ),
        ));
  }

  List<Map> loveProductList = [
    {
      "url": "https://www.itying.com/images/flutter/hot1.jpg",
      "title": "上衣",
      "id": '1'
    },
    
    {
      "url": "https://www.itying.com/images/flutter/hot2.jpg",
      "title": "裤子",
      "id": '2'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot3.jpg",
      "title": "连衣裙",
      "id": '3'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot4.jpg",
      "title": "上衣",
      "id": '4'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot5.jpg",
      "title": "裤子",
      "id": '5'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot6.jpg",
      "title": "连衣裙",
      "id": '6'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot7.jpg",
      "title": "上衣",
      "id": '7'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot8.jpg",
      "title": "裤子",
      "id": '8'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot9.jpg",
      "title": "连衣裙",
      "id": '9'
    },
    {
      "url": "https://www.itying.com/images/flutter/hot10.jpg",
      "title": "上衣",
      "id": '10'
    },
      {
      "url": "https://www.itying.com/images/flutter/hot1.jpg",
      "title": "上衣",
      "id": '1'
    },
      {
      "url": "https://www.itying.com/images/flutter/hot1.jpg",
      "title": "上衣",
      "id": '1'
    },
      {
      "url": "https://www.itying.com/images/flutter/hot1.jpg", 
      "title": "上衣",
      "id": '1'
    },
  ];

  Widget CartListClassName(index, list) {
    // List<Widget> tlist = [];
    // Widget content;
    // var mesg = loveProductList.map((loveProductList) => loveProductList['title']).toList();
    // var dedu = new Set();
    // dedu.addAll(mesg);
    // List list = dedu.toList();
    // for (var item in list) {
    // index = 0;
    return GestureDetector(
      //点击实现局部刷新
      onTap: () {
        print(index);
        setState(() {
          carName = list[index];
          // color = Colors.red;
          where = loveProductList
              .where((loveProductList) => loveProductList['title'] == carName);
        });
      },
      child: Row(
        children: <Widget>[
          new Container(
            width: setWidth(220),
            height: 50,
            color:  list[index] == carName ? Colors.white : Colors.transparent,
            margin: EdgeInsets.only(top: 1.0),
            child: Text(
              list[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: list[index] == carName ? Colors.black : Colors.white,
                  letterSpacing: 1.0,
                  height: 2.5,
                  fontSize: 15,
                  fontFamily:"PingFangSC-Medium",
                  fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ],
      ),
    );
  }
  // content = new Column(children: tlist);
  // return content;
}

Widget CrtList(context) {
  List<Widget> dataPage = [];
  Widget content;
  for (var item in where) {
    dataPage.add(GestureDetector(
        onTap: () {
          print(item);
          Navigator.pushNamed(context, '/bady',arguments: {'url':item['url'],'title':item['title']});
        },
        child: Row(
          children: <Widget>[
            Container(
              width: setWidth(250 * 2),
              color: Colors.white70,
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 12.0, top: 12.0),
                    child: Image.network(
                      item['url'],
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 12.0, top: 12.0),
                      child: Column(
                        children: <Widget>[
                          Text(item['title']),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )));
  }
  content = new Column(children: dataPage);
  return content;
}

// }

// Widget isShow(item, index, color, list) {
//   return Row(
//     children: <Widget>[
//       new Container(
//         width: setWidth(250),
//         color: Colors.white,
//         margin: EdgeInsets.only(top: 1.0),
//         child: Text(
//           item,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               color: item == list[index] ? color : Colors.black,
//               letterSpacing: 1.0,
//               height: 2,
//               fontSize: 15),
//         ),
//       ),
//     ],
//   );
// }
