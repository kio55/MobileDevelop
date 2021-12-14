import 'package:flutter/cupertino.dart';

abstract class HeroState {}

class HeroLoadingState extends HeroState {}

class HeroLoadedState extends HeroState {
  List<dynamic> loadedHeroes;
  HeroLoadedState({required this.loadedHeroes});
}

class HeroErrorState extends HeroState {}
