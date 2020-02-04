// Put imports in should be in ALPHABETICAL ORDER

import 'package:flutter/material.dart';
import '../../widgets/cards.dart';

class Page1 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This is PAGE 1 !!!'),
          // Changing the appbar text colour to green
          textTheme: TextTheme(
          title: TextStyle(
            color: Colors.green,
            fontSize: 20.0,
          )
        ),
        ),
        body: Container(
          height: 200.0,
          child: 
          ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardTemplate()
          ]
          )
      )
    );
  }
}