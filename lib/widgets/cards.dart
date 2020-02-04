// CardTemplate will be a Stateful Widget

import 'package:flutter/material.dart';
import 'text_section.dart';

class CardTemplate extends StatefulWidget{
  // For CardTemplate() to receive an arugment, you need a constructor function
  // final String basic; 
  // CardTemplate(this.basic);
  
  @override
  // The createState() function returns an instance of the state object declared below: 
  _CardTemplateState createState() => _CardTemplateState();
}

class _CardTemplateState extends State<CardTemplate> {
  @override
  // Data which may change:
  int ninjaLevel = 0; 

  // State objects rebuild a widget every time data changes
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() { // setState() triggers the build() function
          ninjaLevel+=1;
        });
        Navigator.pushNamed(context, '/page1');
      },
      child: Card(
        semanticContainer: true,
        elevation: 5.0,
        margin: EdgeInsets.all(10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container (
          width: 200.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.withOpacity(0.5), Colors.blue.withOpacity(0.5)]), // currently, this gradient is sitting underneath the photo
            image: DecorationImage(
              image: AssetImage('assets/images/borb.jpg'),
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "STARBUCKS $ninjaLevel",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)
              )
              )
          )
              // Image.network(
              //   'https://placeimg.com/640/480/any',
              //   fit: BoxFit.fill,
              // ),
              // Text('$ninjaLevel')
        )
      )
    );
  }
}