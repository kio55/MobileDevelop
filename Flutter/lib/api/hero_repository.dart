import 'package:marvel_app/api/domain/api_clients/api_client.dart';
import 'package:marvel_app/models/hero.dart';

class HeroRepository {
  HeroProvider _heroesProvider = HeroProvider();

  Future<List<Hero>> getAllHeroes() => _heroesProvider.getFirstNHeroes(10);
}
