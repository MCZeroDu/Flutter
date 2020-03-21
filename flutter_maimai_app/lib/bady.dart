import 'package:flutter/material.dart';

class badyPage extends StatelessWidget{
 const badyPage({Key key}) : super(key:key);
 @override
  Widget build(BuildContext context){
    dynamic obj = ModalRoute.of(context).settings.arguments;
    print(obj['id']);
    return Scaffold(
      appBar: AppBar(
        title: Text(obj['title']),
        centerTitle: true,
      ),
    );
  }
}

