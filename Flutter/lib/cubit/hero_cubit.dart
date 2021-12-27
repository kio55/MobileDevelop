import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/api/hero_repository.dart';
import 'package:marvel_app/cubit/heroes_state.dart';

class HeroCubit extends Cubit<HeroState> {
  final HeroRepository heroesRepository;

  HeroCubit(this.heroesRepository) : super(HeroLoadingState());

  Future<void> fetchHeroes() async {
    try {
      final _loadedHeroesList = await heroesRepository.getAllHeroes();
      emit(HeroLoadedState(loadedHeroes: _loadedHeroesList));
    } catch (_) {
      emit(HeroErrorState());
    }
  }
}
