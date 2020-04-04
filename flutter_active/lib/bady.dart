import 'package:flutter/material.dart';

class badyPage extends StatelessWidget {
  const badyPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    dynamic obj = ModalRoute.of(context).settings.arguments;
    // print(obj['url']);
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: 750,
            height: 220,
            child: Image.network(
              obj['url'],fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
