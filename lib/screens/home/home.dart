// Put imports in should be in ALPHABETICAL ORDER

import '../../models/location.dart';
import '../../style.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import '../../widgets/text_section.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/cards.dart';

class Home extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    final locations = Location.fetchAll(); // this "locations" PLURAL variable stores all the Location objects (which contain LocFacts)
    final location = locations.first; // for now, just get the first array element of location
    final wordPair = WordPair.random(); 

    return Scaffold(
        appBar: AppBar(
          title: Text("this is the appbar title"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          /// Column children WITHOUT implementing ListView: ///
          children: [
            //CardTemplate(),
            ImageBanner(location.imagePath),
            TextSection("title for the generated text:", wordPair.asPascalCase),
          ]..addAll(textSections(location)) 
        ) // two dots (..) is the cascade operator
      );
    }
  }

// this is a stateful widget, which will creates states
class RandomWords extends StatefulWidget {
  @override
  // the following function named "createState" returns a RandomWordsState state
  // essentially, it looks like "RandomWordsState" names both a return type and a function 
  RandomWordsState createState() => RandomWordsState();
}

// this is a state. it is just generating information. 
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

// declare an array of widgets named textSections
List<Widget> textSections(Location location) {
  return location.fact.map((fact) => TextSection(fact.title, fact.text)).toList(); 
}