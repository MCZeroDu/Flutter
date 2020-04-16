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
    carName = loveProductList[0]['title'];
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
          title: Text(''),
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
                  children: <Widget>[
                    CrtList(context),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
  
  List<Map> loveProductList = [
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/9701071e77cc7f7d7c6061191fc031cd1e8c22d4.png",
      "title": "粮油副食",
      "id": '1',
      "Feilei": '核心产区五常新米（礼盒装）5kg'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/76c0ec9bb6e325ea4d9ee63a64bb5d642bec8c01.jpg",
      "title": "粮油副食",
      "id": '2',
      "Feilei": '云南干巴笋（150g/瓶）'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/22fef8515ee6f8d2ec28b564915c3442d8394615.jpg",
      "title": "粮油副食",
      "id": '3',
      "Feilei": '七彩菌汤包（130g/盒）'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/6a381ce10da0ec8601b102578ee39062c4fc3c26.jpg",
      "title": "调味料",
      "id": '4',
      "Feilei": '路南鸡枞油腐乳 （200g/瓶）'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/eb274fe0a977a0c5d89eea67f99e3577ff633718.jpg",
      "title": "粮油副食",
      "id": '5',
      "Feilei": '山地油脂黄小米 500g*2'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/742a5ab1044afc25352530494530603aab7c39a0.jpg",
      "title": "粮油副食",
      "id": '6',
      "Feilei": '山地农家黑小米 500g*2'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/1fc44f25fda9fb5ab319f13ee3364ccc824b590d.png",
      "title": "粮油副食",
      "id": '7',
      "Feilei": '山地农家玉米碴 500g*2'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/3567ede9eeafd20c57464727abb6364215930c25.jpg",
      "title": "粮油副食",
      "id": '8',
      "Feilei": '坝上白藜麦  500g'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/fa8a41fdf58038556cd9de25da266496a933978a.jpg",
      "title": "有机蔬菜",
      "id": '9',
      "Feilei": '有机蔬菜宅配卡 4次/24次/50次（只配送北京）'
    },
    {
      "url":
          "http://mmv3.maimaiplanet.com/addons/zjhj_mall/core/web/uploads/image/store_2/6eeba7a1fa662111124e02527f2f5955de655a80.jpg",
      "title": "有机蔬菜",
      "id": '10',
      "Feilei": '有机蔬菜宅配卡 4次/24次/50次（只配送北京）'
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
            color: list[index] == carName ? Colors.white : Colors.transparent,
            margin: EdgeInsets.only(top: 1.0),
            child: Text(
              list[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: list[index] == carName ? Colors.black : Colors.white,
                letterSpacing: 1.0,
                height: 2.5,
                fontSize: 15,
                fontFamily: "PingFangSC-Medium",
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
    dataPage.add(
      GestureDetector(
        onTap: () {
          print(item);
          Navigator.pushNamed(context, '/bady',
              arguments: {'url': item['url'], 'title': item['title']});
        },
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.transparent,
              child: Container(
                width: setWidth(250 * 2),
                // color: Colors.red[200],
                padding: EdgeInsets.only(bottom: 5.0),
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
                      width: 100,
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.only(left: 12.0, top: 12.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              item['Feilei'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
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
