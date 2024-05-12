import 'package:dio/dio.dart';
import 'package:popcorn_portal/core/networking/web_services.dart';
import '../model/anime_model.dart';

class AnimeDataRepo {
  WebServices _webServices;
  AnimeDataRepo(this._webServices);

  Future<Anime> getAnimeData() async {
    try {
      final response = await _webServices.getAnimeData();
      return response;
    } on DioError catch (error) {
      print("Error: ${error.message}");
      throw Exception("Failed to get data information");
    }
  }
}
