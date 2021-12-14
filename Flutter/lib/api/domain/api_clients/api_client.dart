import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:marvel_app/api/constants.dart';
import 'package:marvel_app/models/hero.dart' as hero_model;

class HeroProvider {
  Future getByURL(String url, [Map<String, dynamic>? queryParameters]) async {
    Dio dio = Dio();

    int timestamp = DateTime.now().millisecondsSinceEpoch;

    String hashString =
        '$timestamp${Constants.apiPrivateKey}${Constants.apiPublicKey}';
    var hashBytes = utf8.encode(hashString);
    String md5Hash = md5.convert(hashBytes).toString();

    dio.options.baseUrl = Constants.apiUrl;
    dio.options.queryParameters['apikey'] = Constants.apiPublicKey;
    dio.options.queryParameters['hash'] = md5Hash;
    dio.options.queryParameters['ts'] = timestamp;
    //dio.options.connectTimeout = 5000;

    if (queryParameters != null) {
      dio.options.queryParameters.addAll(queryParameters);
    }

    Response allData = await dio.get(url);
    return allData.data['data'];
  }

  Future<List<hero_model.Hero>> getFirstNHeroes(int count) async {
    Map<String, dynamic> qp = {'limit': count.toString()};
    dynamic allData;
    allData = await getByURL(Constants.apiCharactersURL, qp);
    List<hero_model.Hero> result = [];

    allData['results'].forEach((dynamic val) {
      result.add(hero_model.Hero.fromJson(val));
    });
    return Future(() => result);
  }
}
