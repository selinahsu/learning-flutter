import 'loc-fact.dart';

class Location {
  String name; 
  String imagePath; 
  final List<LocFact> fact; // each "fact" item contains .title and .text, asp specified in loc-fact.dart

  Location(this.name, this.imagePath, this.fact); 

  // Declare a "fetchAll()" function
  static List<Location> fetchAll() {
    return [
      Location('Arashiyama Bamboo Grove', 'assets/images/test-pigeon.jpg', [
        LocFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location('Mount Fuji', 'assets/images/test-pigeon.jpg', [
        LocFact('Summary',
            'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
        LocFact('Did You Know',
            'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
      ]),
    ];
  }
}