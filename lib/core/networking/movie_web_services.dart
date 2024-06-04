import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/home/data/model/show_model.dart';
import '../constants/api_constants.dart';

part 'movie_web_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiUrlMovie)
abstract class WebServicesShow {
  factory WebServicesShow(Dio dio, {String baseUrl}) = _WebServicesShow;

  @GET(ApiConstants.apiUrlMovie)
  Future<Show> getShowsData();
}
