import 'package:flutter/material.dart';
import 'text_section.dart';

class CardTemplate extends StatelessWidget{
  @override

  final List<TextSection> quotes = [
    TextSection("I am one", "Romeo wherefore art thou Romeo"), 
    TextSection("I am two", "Juliet wherefore art thou Juliet"),
  ];

  Widget cardTemplate (exampleQuote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Column(
        children: <Widget>[
          Text(
            exampleQuote.title,
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0
            )
          ),
          SizedBox (height: 6.0),
          Text(
            exampleQuote.body,
            style: TextStyle(
              color: Colors.green,
              fontSize: 14.0
            )
          ),
          SizedBox (height: 6.0)
        ],
      )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: quotes.map((exampleQuote)=>cardTemplate(exampleQuote)).toList(),
      ),
    );
  }


}