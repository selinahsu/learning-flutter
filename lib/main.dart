import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      
      title: 'Where does this text show up even?',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppBarTextStyle) // see style.dart for AppBarTextStyle
      ),
      textTheme: TextTheme(
        title: TitleTextStyle)
      ),
    );
  }
}