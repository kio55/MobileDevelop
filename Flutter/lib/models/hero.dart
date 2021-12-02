class Hero {
  final String name;
  final String path;

  Hero({required this.name, required this.path});
}

class Heroes {
  final _heroes = [
    Hero(name: 'Spider Man', path: 'images/spider.jpg'),
    Hero(name: 'Hulk', path: 'images/hulk.jpg'),
    Hero(name: 'Daredevil', path: 'images/dard.jpg'),
    Hero(name: 'Thor', path: 'images/thor.jpg'),
    Hero(name: 'Iron man', path: 'images/iron.jpg'),
  ];

  List<Hero> get() => [..._heroes];
}
