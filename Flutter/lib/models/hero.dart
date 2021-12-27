import 'package:hive_flutter/hive_flutter.dart';

part 'hero.g.dart';

@HiveType(typeId: 2)
class Hero {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String path;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final int id;

  Hero(
      {required this.description,
      required this.name,
      required this.path,
      required this.id});

  factory Hero.fromJson(Map<String, dynamic> json) {
    return Hero(
        name: json['name'],
        description: json['description'],
        path: json['thumbnail']['path'] + '/portrait_incredible.jpg',
        id: json['id']);
  }
}
