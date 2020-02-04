// Put imports in should be in ALPHABETICAL ORDER

import '../../style.dart';
import 'package:flutter/material.dart';
import '../../widgets/text_section.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/cards.dart';

class Home extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Container(
          height: 200.0,
          child: 
          ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardTemplate(), CardTemplate(), CardTemplate(), CardTemplate()
          ]
          )
      )
    );
  }
}