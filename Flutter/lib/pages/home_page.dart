import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/hero_card.dart';
import 'package:marvel_app/widgets/hero_list.dart';
import 'package:marvel_app/widgets/logo_widget.dart';
import 'package:marvel_app/widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          LogoWidget(),
          TitleWidget(),
          HeroList(),
        ],
      ),
    );
  }
}
