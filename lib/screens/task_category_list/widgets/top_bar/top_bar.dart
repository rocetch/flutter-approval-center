import 'package:flutter/material.dart';

class TopBar {
  TopBar(this.title);

  final String title;

  AppBar build() => AppBar(
    title: Text(this.title),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: null,
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: _onMorePressed,
      ),
    ],
    toolbarOpacity: 1,
    bottomOpacity: 0.1,
    //backgroundColor: Color.fromRGBO(0, 0, 255, 0.1),
  );

  void _onMorePressed() {

  }
}
