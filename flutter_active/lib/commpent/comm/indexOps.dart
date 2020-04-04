import 'package:flutter/material.dart';
import 'package:flutter_app2/cart.dart';
import '../../utils/screen.dart';
//首页运营位
Widget indexOps(formList,context) { 
  setInit(context);
  return Container(
    width:setWidth(750*2),
    height: setHeight(300.0*2),
    padding: EdgeInsets.only(left: 20.0),
    color: Colors.black,
    child: TheMainBody(formList,context),
  );
}

// the main body
Widget TheMainBody(formList,context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        // color: Colors.green,
        width: setWidth(750*2), 
        height: setHeight(360),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //the left Image and Container
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: setWidth(160*2),
              height: setHeight(160.0*2.0),
              // color: Colors.green,
              child: GestureDetector(
                onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => cartPage()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                      formList[2]['acf']['item'][0]['image'],
                      fit: BoxFit.fill),
                ),
              ),
            ),
            //the right Image and Container
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 10.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width:setWidth(165*2),
              height:setHeight(180.0*2),
              //  color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width:setWidth(165*2),
                    height:setHeight(75.0*2),
                    //  color: Colors.yellow,
                    child: GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(
                            formList[2]['acf']['item'][1]['image'],
                            fit: BoxFit.fill),
                      ),
                      //
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: setWidth(165*2),
                    height: setHeight(75.0*2),
                    //  color: Colors.yellow,
                    child: GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(
                            formList[2]['acf']['item'][2]['image'],
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //the bottom Image and Container
          ],
        ),
      ),
      // the Bottom Container
      Container(
        width:  setWidth(360.0*2),
        height: setHeight(70.0*2),
        // color: Colors.white,
        child: Row(
          children: <Widget>[
            // the Left Image and Container
            Container(
                width: setWidth(215.0*2),
                height: setHeight(70.0*2),
                // color: Colors.green,
                child: GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.network(
                        formList[2]['acf']['item'][3]['image'],
                        fit: BoxFit.fill),
                  ),
                )),
            Container(
              width: setWidth(110.0*2),
              height:setHeight(80.0*2),
              // color: Colors.yellow,
              margin: EdgeInsets.only(left:10.0),
              child: GestureDetector(
                onTap: (){

                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  
                  child: Image.network(
                      formList[2]['acf']['item'][4]['image'],
                      fit: BoxFit.fill,),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
