import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_app2/bady.dart';
import 'package:flutter_app2/cart.dart';
// import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';

// 请求后台数据
Future getDatas() async {
  try {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        'https://apiv3.maimaiplanet.com/game/appproxy?rest_route=%2Facf%2Fv3%2Findex_settings');
    // print(response);
    return response.data;
  } catch (e) {
    return print(e);
  }
}

List formList;

// final response = http.get('https://apiv3.maimaiplanet.com/game/appproxy?rest_route=%2Facf%2Fv3%2Findex_settings');
//创建runApp要加载的组件
const a = "首页";

//创建一个自定义的组件,用这个自定义的组件包含scaffold组件
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getDatas().then((res) {
      formList = res;
      setState(() {
        formList = res;
        print(formList);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //定义标题栏
      appBar: AppBar(
        title: Text("麦麦星球",),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: ListView(
        children: <Widget>[
          BodyPage(),
          fuWuPage(),
        ],
      ),
    );
  }
}

bool that;
//头部内容 Banner
Widget BodyPage() {
  if (formList[0]['acf']['item'].length == 1) {
    that = false;
  }
  return Container(
    width: 750.0,
    height: 400.0,
    child: Swiper(
      loop: that,
      scrollDirection: Axis.horizontal,
      itemCount: formList[0]['acf']['item'].length,
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          formList[0]['acf']['item'][0]['image'],
          fit: BoxFit.fill,
        );
      },
    ),
  );
}

//服务栏
List<Map> loveProductList = formList[1]['acf']['item'];
Widget fuWuPage() {
  print(loveProductList);
  return Container(
    width: 750.0,
    height: 78.0,
    color: Colors.black,
    child: GridView.builder(
      //设置 GridView 禁止滑动
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, childAspectRatio: 1.0),
      itemBuilder: (context, index) {
        return Container(
          width: 50.0,
          height: 50.0,
          color: Colors.black26,
          child: Column(
            children: <Widget>[
              Nav_FuWuPage(context, index),
              FW_Biaoti(index)
            ],
          ),
        );
      },
    ),
  );
}

//服务列表标题
Widget FW_Biaoti(index) {
  return Container(
    height: 18.0,
    width: 50.0,
    padding: const EdgeInsets.only(bottom:2.0),
    // color: Colors.black,
    child: Text(formList[1]['acf']['item'][index]['title'], textAlign:TextAlign.center,style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),)
  );
}
// 服务列表
Widget Nav_FuWuPage(context, index) {
  //添加点击事件
  return GestureDetector(
    //点击事件
    onTap: () {
      //路由传递参数
      Navigator.pushNamed(context, '/cart',arguments: {"id":"${index}"});
    },
    //服务列表布局
    child: Container(
      width: 60.0,
      height: 60.0,
      child: Padding(
        padding: EdgeInsets.only(
          top: 5.0,
        ),
        // color:Colors.red,
        child: Image.network(
          formList[1]['acf']['item'][index]['label'],
        ),
      ),
    ),
  );
}
