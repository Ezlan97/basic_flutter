import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "exploring UI Widget",
    home: Scaffold(
      appBar: AppBar(title: Text('Basic List View'),),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautiful View!'),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.laptop),
        title: Text('Linux Os'),
        onTap: () => debugPrint('laptop Tapped!'),
      ),
    ],
  );

  return listView;
}