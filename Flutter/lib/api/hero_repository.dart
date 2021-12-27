import 'package:hive/hive.dart';
import 'package:marvel_app/api/domain/api_clients/api_client.dart';
import 'package:marvel_app/models/hero.dart';

class HeroRepository {
  HeroProvider _heroesProvider = HeroProvider();

  final heroesCount = 10;

  Future<List<Hero>> getAllHeroes() async {
    List<Hero> response;
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(HeroAdapter());
    }
    final box = await Hive.openBox<Hero>('heroes_box-with_id');

    try {
      response = await _heroesProvider.getFirstNHeroes(heroesCount);
      if (box.values.isNotEmpty) {
        box.deleteAll(box.keys);
      }
      for (int i = 0; i < response.length; i++) {
        box.add(response[i]);
      }
      box.close();
      return response;
    } catch (_) {
      if (box.values.isEmpty) {
        box.close();
        rethrow;
      } else {
        response = box.values.toList();
        box.close();
        return response;
      }
    }
  }
}
