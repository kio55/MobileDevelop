import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      margin: const EdgeInsets.only(top: 20),
      child: const Text(
        'Choose your hero',
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontSize: 28,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
