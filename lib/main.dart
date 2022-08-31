import 'package:app/utilities/themeColors.dart';
import 'package:app/homeWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'GoldmanSans',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
      
    );
  }
}
