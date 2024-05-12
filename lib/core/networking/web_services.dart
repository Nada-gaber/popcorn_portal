import 'package:dio/dio.dart';
import 'package:popcorn_portal/features/home/data/model/anime/anime_model.dart';
import 'package:retrofit/http.dart';
import '../constants/api_constants.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET(ApiConstants.apiUrl)
  Future<Anime> getAnimeData();
}
