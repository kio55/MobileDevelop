import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/hero_card.dart';
import '../models/hero.dart' as hero_model;

class HeroList extends StatefulWidget {
  const HeroList({Key? key}) : super(key: key);

  @override
  _HeroListState createState() => _HeroListState();
}

class _HeroListState extends State<HeroList> {
  static final controller = PageController(
    initialPage: 0,
    viewportFraction: 0.77,
  );

  final hero_model.Heroes heroes = hero_model.Heroes();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500.0,
      child: PageView.builder(
          controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: heroes.get().length,
          itemBuilder: (BuildContext context, int index) {
            return HeroCard(hero: heroes.get().elementAt(index));
          }),
    );
  }
}
