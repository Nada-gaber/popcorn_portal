import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:popcorn_portal/core/error/failure.dart';
import 'package:popcorn_portal/core/error/server_failure.dart';
import 'package:popcorn_portal/core/networking/web_services.dart';

import '../model/anime_model.dart';

class AnimeDataRepo {
  final WebServices _webServices;
  AnimeDataRepo(this._webServices);
  Future<Either<Failure, Anime>> getAnimeData() async {
     try {
      final animeData = await _webServices.getAnimeData();
      return Right(animeData);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  
  }
}
