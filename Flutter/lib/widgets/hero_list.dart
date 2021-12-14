import 'package:flutter/material.dart';
import 'package:marvel_app/cubit/hero_cubit.dart';
import 'package:marvel_app/cubit/heroes_state.dart';
import 'package:marvel_app/widgets/hero_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  @override
  Widget build(BuildContext context) {
    final HeroCubit heroCubit = context.read<HeroCubit>();
    heroCubit.fetchHeroes();
    return BlocBuilder<HeroCubit, HeroState>(
      builder: (context, state) {
        Widget currentWidget = const Text('Cant load heroes. Try again later.');
        if (state is HeroLoadingState) {
          currentWidget = const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is HeroLoadedState) {
          currentWidget = SizedBox(
            width: double.infinity,
            height: 500.0,
            child: PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: state.loadedHeroes.length,
                itemBuilder: (BuildContext context, int index) {
                  return HeroCard(hero: state.loadedHeroes[index]);
                }),
          );

          if (state is HeroErrorState) {
            currentWidget = const Text('Cant load heroes. Try again later.');
          }
        }
        return currentWidget;
      },
    );
  }
}
