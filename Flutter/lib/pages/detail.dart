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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.network(
                  hero.path,
                ).image,
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: const ButtonWidget(),
                ),
                flex: 15,
                fit: FlexFit.tight,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: double.infinity,
                  child: Text(
                    hero.name,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  width: double.infinity,
                  height: 100,
                  child: Text(
                    hero.description,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontFamily: "Montserrat",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
