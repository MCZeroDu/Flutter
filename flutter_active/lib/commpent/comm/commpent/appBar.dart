import 'package:flutter/material.dart';
Widget appbar(text) {
  return PreferredSize(
    child: AppBar(
      title: Text(text),
      centerTitle: true,
    ),
    preferredSize: Size.fromHeight(35),
  );
}
