import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:popcorn_portal/core/error/failure.dart';
import 'package:popcorn_portal/core/error/server_failure.dart';
import 'package:popcorn_portal/core/networking/movie_web_services.dart';
import '../model/show_model.dart';

class ShowRepo {
  final WebServicesShow _webServicesShow;
 ShowRepo(this._webServicesShow);
 
  Future<Either<Failure, Show>> getShowData() async {
     try {
      final showsData = await _webServicesShow.getShowsData();
      return Right(showsData);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  
  }
}