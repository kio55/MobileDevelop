import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/api/hero_repository.dart';
import 'package:marvel_app/cubit/hero_cubit.dart';
import 'package:marvel_app/widgets/hero_list.dart';
import 'package:marvel_app/widgets/logo_widget.dart';
import 'package:marvel_app/widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  final heroesRepository = HeroRepository();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        children: [
          const LogoWidget(),
          const TitleWidget(),
          BlocProvider<HeroCubit>(
            create: (context) => HeroCubit(heroesRepository),
            child: const HeroList(),
          ),
        ],
      ),
    );
  }
}
