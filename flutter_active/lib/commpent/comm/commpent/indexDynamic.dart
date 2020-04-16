import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '.././../../utils/screen.dart';
// class Dynamic extends StatefulWidget {
//   const Dynamic({Key key}) : super(key: key);
//   DynamicState createState() => DynamicState();
// }

/**
 *  首页农场动态 栏
 */

Widget Dynamic(formList) {
  var dataform = formList[4]['acf']['group'];
  return Container(
    height: setHeight(245.0 * 2),
    padding: EdgeInsets.all(10),
    color: Color(0xFFF2F2F3),
    child: ListView.builder(
      itemCount: dataform.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return DynamicList(dataform, index);
      },
    ),
  );
}

Widget DynamicList(dataform, int index) {
  return Container(
    child: GestureDetector(
      // onTap: () {
      //   print('农场推荐${index}');
      // },
      child: Container(
        color: Colors.white,
        height: 50,
        margin: EdgeInsets.only(top: 5.0, left: 15.0),
        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            // width: setWidth(200.0),
                            padding: EdgeInsets.only(left: 2.0),
                            // color: Colors.red,
                            child: GestureDetector(
                              child: Row(
                                children: <Widget>[
                                  Text(dataform[index]['name'],
                                      style: TextStyle(
                                          fontSize: 16.0, height: 1.3)),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                  )
                                ],
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 3.0, bottom: 5.0),
                          child: Text(dataform[index]['sub_title']),
                        ),
                        getDataIn(dataform[index]['item'], index, dataform),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
  // content = new Row(children: listTmen);
  // return content;
}

//农场推荐
Widget getDataIn(dataform, index, dad) {
  print(dataform.length);
  List<Widget> listView = [];
  Widget conten;
  for (var item in dataform) {
    listView.add(new Container(
        child: GestureDetector(
      onTap: () {
        print('农场动态${item['title']}');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //农场动态图片
          Container(
            width:
                dataform.length != 1 ? setWidth(98.0 * 2) : setWidth(195.0 * 2),
            height: setHeight(104.0 * 2),
            padding: dataform.length != 1
                ? EdgeInsets.only(left: 2.0, right: 5.0)
                : EdgeInsets.only(left: 0.0),
            child: Image.network(
              item['image'],
              fit: BoxFit.fill,
            ),
          ),
          // 农场动态简介
          Container(
              width: dataform.length != 1
                  ? setWidth(90.0 * 2)
                  : setWidth(195.0 * 2),
              height: 40.0,
              margin: EdgeInsets.only(top: 12),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: <Widget>[
                  Text(
                    item['title'],
                    textAlign: TextAlign.start,
                    style: TextStyle(height: 1.2),
                  ),
                ],
              )),
          //农场 标签
          Container(
            height: 20.0,
            // margin: EdgeInsets.only(top:2),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.vertical(
                          top: Radius.elliptical(10, 10),
                          bottom: Radius.elliptical(10, 10)),
                    ),
                    child: Text(
                      '有机认证',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.green),
                    ),
                  ),
                ]),
          )
        ],
      ),
    )));
  }
  conten = new Row(children: listView);
  return conten;
}
