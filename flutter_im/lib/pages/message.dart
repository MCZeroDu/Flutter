import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget{
  @override 
  MessageState createState() => MessageState();
}

class MessageState extends State<MessagePage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
    );
  }
}