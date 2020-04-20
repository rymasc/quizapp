import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('My Cool App')),
        body: Center(child: Icon(Icons.cake)),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        drawer: Drawer(),
      ),
    );
  }
}