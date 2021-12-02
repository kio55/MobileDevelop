import 'package:flutter/material.dart';
import 'package:marvel_app/pages/detail.dart';

import '../models/hero.dart' as hero_model;

class HeroCard extends StatelessWidget {
  final hero_model.Hero hero;

  const HeroCard({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(hero: hero)));
      },
      child: Hero(
        tag: hero,
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              width: 270,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                      hero.path,
                    ).image,
                    fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  hero.name,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              )),
        ),
      ),
    );
  }
}
