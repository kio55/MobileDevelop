import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'hero.g.dart';

@HiveType(typeId: 1)
class Hero {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String path;
  @HiveField(2)
  final String description;

  Hero({required this.description, required this.name, required this.path});

  factory Hero.fromJson(Map<String, dynamic> json) {
    return Hero(
        name: json['name'],
        description: json['description'],
        path: json['thumbnail']['path'] + '/portrait_incredible.jpg');
  }
}
