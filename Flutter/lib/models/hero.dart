class Hero {
  final String name;
  final String path;
  final String description;

  Hero({required this.description, required this.name, required this.path});

  factory Hero.fromJson(Map<String, dynamic> json) {
    return Hero(
        name: json['name'],
        description: json['description'],
        path: json['thumbnail']['path'] + '/portrait_incredible.jpg');
  }
}
