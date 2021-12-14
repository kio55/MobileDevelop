import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  final path = 'images/marvel.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Image.asset(
              path,
              width: 200,
            ).image,
            fit: BoxFit.fitHeight),
      ),
    );
  }
}
