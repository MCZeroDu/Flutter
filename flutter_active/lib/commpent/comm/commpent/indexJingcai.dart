import 'package:flutter/material.dart';
import '../../../utils/screen.dart';
Widget ViewJingcai(fromList,context){
  var viewList = fromList[6]['acf']['item'];
  print(viewList.length);
  setInit(context);
  return Container(
      color: Color(0xFFF2F2F3),
      padding: EdgeInsets.all(15),
      height: setHeight(300.0),
      child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: viewList.length,
           itemBuilder: (context,index){
             return  viewImage(viewList,index); 
           },
      ),
  );
}

Widget viewImage(viewList,index){
  return Container(
    width: setWidth(560),
    margin: EdgeInsets.only(left:10,right: 5),
    child: Image.network(
      viewList[index]['image'],fit: BoxFit.fill,
    ),
  );
}



