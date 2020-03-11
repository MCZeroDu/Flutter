// 引入ui库
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
Widget HomePage(){
  return Container(
     child: AspectRatio(
      aspectRatio: 2/1,
      child: new Swiper(
        itemCount: 3,
        itemBuilder: (BuildContext context,int index){  
          return new Image.network('https://media.maimaiplanet.com/addons/zjhj_mall/core/web/statics/wxapp/images/show_20190729.jpg',fit: BoxFit.cover);
        },
        autoplay: true,
      ),
     ),
  );
}