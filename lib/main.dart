import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/page1/page1.dart';
import 'screens/calendar/calendar.dart';
import 'style.dart';

void main() {
  runApp(MaterialApp(
    title: 'This is Using Named Routes',
    theme: ThemeData(
      primaryColor: Colors.blueGrey,
    ),
  
    // Start the app with the "/" named route:
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the Home widget.
      '/': (context) => Home(),
      // When navigating to the "/page1" route, build the Page1 widget.
      '/page1': (context) => Page1(),
      //'/calendar': (context) => Calendar()
    },
  ));
}

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