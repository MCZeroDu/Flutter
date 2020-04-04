import 'package:flutter/material.dart';

const active = null;

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

class cartPage extends StatelessWidget {
  const cartPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
        centerTitle: true,
      ),
      body: Container(
        width: 750.0,
        color: Colors.white24,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.0),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                NavgationPage(context, index),
                StatePage(index),
              ],
            );
          },
          itemCount: loveProductList.length,
        ),
      ),
    );
  }
}

Widget StatePage(index) {
  return Container(
    // padding: EdgeInsets.only(top: 2.0),
    child: Text(loveProductList[index]['title']),
  );
}

Widget NavgationPage(context, index) {
  return new GestureDetector(
      onTap: () {
        var fin = loveProductList[index]["url"];
        var title = loveProductList[index]["title"];
        Navigator.pushNamed(context, '/bady',
            arguments: {'url': fin, 'title': title});
      },
      child: Container(
        // width: 750.0,
        // height: 180.0,
        // color: Colors.cyan,
        // margin: EdgeInsets.only(bottom: 8.0),
        child: Padding(
            padding:
                EdgeInsets.only(top: 6.0, left: 5.0, right: 5.0, bottom: 6.0),
            child: Image.network(
              loveProductList[index]['url'],
              // fit: BoxFit.fitWidth,
              width: 120.0, height: 120.0,
            )),
      ));
}
