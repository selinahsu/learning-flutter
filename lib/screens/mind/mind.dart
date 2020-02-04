// Put imports in ALPHABETICAL ORDER

import '../../style.dart';
import 'package:flutter/material.dart';
import '../../models/location.dart';

class Mind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final locations = Location.fetchAll(); 

    return Scaffold(
        appBar: AppBar(
          title: Text('Your Mind'),
        ),
        body: ListView(
          children: 
            locations.map((location)=>GestureDetector( // Put "GestureDetector" function instead of "Text" to make this a BUTTON
              child: Text(location.name),
              onTap: () => _onLocationTap(context, location.id) // Put the function "_onLocationTap" inside this unnamed function
              )
            ).toList(),
        )
    );
  }
  void _onLocationTap (BuildContext context, int locationID) {

  }
}