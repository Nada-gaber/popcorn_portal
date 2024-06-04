import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/home/data/model/show_model.dart';
import '../constants/api_constants.dart';

part 'movie_web_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiUrlMovie)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET('shows')
  Future<Show> getShowsData();



}