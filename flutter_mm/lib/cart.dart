import 'package:flutter/material.dart';

const active = null;

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
];

class cartPage extends StatelessWidget {
  const cartPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cart'),
        centerTitle: true,
      ),
      body: Container(
        width: 750.0,
        color: Colors.yellow,
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
        var fin = loveProductList[index]["id"];
        var title = loveProductList[index]["title"];
        Navigator.pushNamed(context, '/bady',
            arguments: {'id': fin, 'title': title});
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
              width: 120.0,height: 120.0,
            )),
      ));
}
