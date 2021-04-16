import 'package:flutter/material.dart';
import 'package:p7/views/gridview_screen.dart';
import 'package:p7/views/listview_screen.dart';
import 'package:p7/views/scrollview_screen.dart';
import 'package:p7/views/tabbedview_screen.dart';
import './views/cardview_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      routes: {
        '/': (context) => HomeScreen(),
        '/cardview': (context) => CardViewScreen(),
        '/listview': (context) => ListViewBuilder(),
        '/gridview': (context) => GridViewScreen(),
        '/scrollview': (context) => ScrollViewScreen(),
        '/tabbedview': (context) => TabbedViewScreen(),
      },
    );
  }
}
