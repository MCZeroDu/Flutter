import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_app2/commpent/comm/indexOps.dart';
import './comm/indexOps.dart';
//引入适配库
import '../utils/screen.dart';
import 'comm/commpent/indexDynamic.dart';
import 'comm/commpent/indexTuiJian.dart';
import '../commpent/comm/commpent/appBar.dart';
// 请求后台数据
Future getDatas() async {
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        'https://api.test.maimaiplanet.com/game/appproxy?rest_route=%2Facf%2Fv3%2Findex_settings');
    return response.data;
  } catch (e) {
    print('错误');
    return print(e);
  }
}

// final response = http.get('https://apiv3.maimaiplanet.com/game/appproxy?rest_route=%2Facf%2Fv3%2Findex_settings');
//创建runApp要加载的组件
// var _currentIndex;
//创建一个自定义的组件,用这个自定义的组件包含scaffold组件
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  _HomePage createState() => _HomePage();
}

var formList;

class _HomePage extends State<HomePage> {
  //屏幕适配初始化
  @override
  void initState() {
    super.initState();
    getDatas().then((res) {
      formList = res;
      setState(() {
        formList = res;
      });
    });
  }

//屏幕适配初始化
  Widget build(BuildContext context) {
    setInit(context);
    return Scaffold(
      // 定义标题栏
      appBar: appbar('麦麦星球'),
        body: formList == null
          ? Container(
              color: Colors.white,
            )
          : MainYe(context),
    );
  }

// The main Ye
  Widget MainYe(context) {
    
    return Container(
      width: getScreenWidth(),
      height: getScreeHeight(),
      child: ListView(
        children: <Widget>[
          //header Container
          BodyPage(),
          // tow Container
          fuWuPage(),
          indexOps(formList, context),
          Text_Style('农场推荐',context,'/cart'),
          Dynamic(formList),
          Text_Style('农场动态',context,'/login'),
          DecommendPage(formList,context)
        ],
      ),
    );
  }

  bool that;
//header Container Banner
  Widget BodyPage() {
    if (formList != null) {
      if (formList[0]['acf']['item'].length == 1) {
        that = false;
      }
      return Container(
        width: setWidth(750),
        height: setHeight(850),
        child: Swiper(
          loop: that,
          scrollDirection: Axis.horizontal,
          itemCount: formList[0]['acf']['item'].length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              formList[0]['acf']['item'][index]['image'],
              fit: BoxFit.fill,
            );
          },
        ),
      );
    }
  }

//服务栏
// List<Map> loveProductList = formList[1]['acf']['item'];
  Widget fuWuPage() {
    // print(loveProductList);
    return Container(
      width: getScreenWidth(),
      height: setHeight(150),
      color: Colors.red,
      child: Row(
        children: <Widget>[AllFu()],
      ),
    );
  }

  Widget AllFu() {
    List<Widget> list = [];
    Widget counte;
    for (var item in formList[1]['acf']['item']) {
      list.add(GestureDetector(
        child: Container(
          width: setWidth(150),
          height: setHeight(150),
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                width: setWidth(120),
                height: setHeight(100),
                // color: Colors.green,
                child: Image.network(item['label']),
              ),
              Container(
                width: setWidth(150),
                height: setHeight(50),
                // color: Colors.green,
                child: Text(
                  item['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ));
    }
    counte = new Row(children: list);
    return counte;
  }
}

Widget Text_Style(text,context,url) {
  return Container(
    padding: EdgeInsets.only(left: 25, right: 10),
    color: Color(0xFFF2F2F3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
            height: 3,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
        child: GestureDetector(
          onTap: (){
            print('更多');
            Navigator.pushNamed(context, url);
          },
          child: Row(
            children: <Widget>[
              Text(
                '更多',
                style: TextStyle(height: 4),
              ),
              Container(
                margin: EdgeInsets.only(top: 22),
                child: Icon(Icons.keyboard_arrow_right),
              )
            ],
          ),
        ))
      ],
    ),
  );
}
