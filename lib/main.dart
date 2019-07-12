import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main()=> runApp(MaterialApp(
  title: 'Exploring UI widget',
  home: Scaffold(
    appBar: AppBar(title: Text('Basic list view'),),
    body: getListView(),
  ),
)
);

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () => debugPrint("Landscape tapped"),
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text('another element in the list'),
      Container(color: Colors.red, height: 50.0,)
    ],
  );
  return listView;
}