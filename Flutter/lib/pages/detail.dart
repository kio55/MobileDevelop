import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/button_widget.dart';
import '../models/hero.dart' as hero_model;

class DetailPage extends StatelessWidget {
  final hero_model.Hero hero;

  const DetailPage({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: hero,
        child: Stack(
          children: [
            _BacgroundImage(hero: hero),
            _HeroName(hero: hero),
            _HeroDescriptionList(hero: hero),
          ],
        ),
      ),
      floatingActionButton: const ButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

class _HeroDescriptionList extends StatelessWidget {
  const _HeroDescriptionList({
    Key? key,
    required this.hero,
  }) : super(key: key);

  final hero_model.Hero hero;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 10,
      width: 400,
      height: 100,
      child: SingleChildScrollView(
        child: Text(
          hero.description,
          softWrap: true,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

class _HeroName extends StatelessWidget {
  const _HeroName({
    Key? key,
    required this.hero,
  }) : super(key: key);

  final hero_model.Hero hero;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 140,
      left: 10,
      width: 400,
      height: 40,
      child: Text(
        hero.name,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "Montserrat",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class _BacgroundImage extends StatelessWidget {
  const _BacgroundImage({
    Key? key,
    required this.hero,
  }) : super(key: key);

  final hero_model.Hero hero;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      imageUrl: hero.path,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
