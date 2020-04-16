import 'package:flutter/material.dart';
import 'package:flutter_app2/commpent/from.dart';
import '../../../utils/screen.dart';

Widget DecommendPage(fromList, context) {
  var data = fromList[5]['acf']['item'];
  print(data.length);
  setInit(context);
  return Container(
      height: setHeight(242.0 * 2),
      padding: EdgeInsets.all(16),
      color: Color(0xFFF2F2F3),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return decommendList(data, index);
        },
      ));
}

Widget decommendList(data, index) {
  return GestureDetector(
    onTap: (){
      print('农场动态${index}');
    },
    child: Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: setWidth(157 * 2),
            height: setHeight(182.0 * 2),
            child: Image.network(
              data[index]['image'],
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: 162,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data[index]['title'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  Text(data[index]['sub_title'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  Stack(
                    children: <Widget>[
                      //底色边框
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: setWidth(127 * 2),
                        height: setHeight(15),
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.white),
                            color: Color(0xFFCECECE),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.elliptical(20, 20),
                              bottom: Radius.elliptical(20, 20),
                            )),
                      ),
                      //绿色边框
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: setWidth((127 * 2) *
                            (int.parse(data[index]['progress']) / 100)),
                        height: setHeight(15),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.elliptical(20, 20),
                              bottom: Radius.elliptical(20, 20),
                            )),
                        child: data[index]['progress'] == '100'
                            ? Text(
                                '现货供应',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 8,
                                    height: 1.2,
                                    color: Colors.white),
                              )
                            : Text(
                                '',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
                                    height: 1.2,
                                    color: Colors.white),
                              ),
                      ),
                      //百分比
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: setWidth(127 * 2),
                        height: setHeight(15),
                        padding: EdgeInsets.only(right: 5),
                        child: data[index]['progress'] == '100'
                            ? Text('')
                            : Text(
                                data[index]['progress'] + '%',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.white,
                                    height: 1.2),
                              ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    ),
  );
}
