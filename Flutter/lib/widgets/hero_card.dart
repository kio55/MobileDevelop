import 'package:cached_network_image/cached_network_image.dart';
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
          color: Colors.grey,
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
                width: 370,
                height: 500,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                imageUrl: hero.path,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Positioned(
                bottom: 30,
                left: 10,
                child: Text(
                  hero.name,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.grey.shade500,
                            offset: const Offset(-2, -2)),
                        const Shadow(
                            color: Colors.black,
                            blurRadius: 8,
                            offset: Offset(1, 1))
                      ],
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
