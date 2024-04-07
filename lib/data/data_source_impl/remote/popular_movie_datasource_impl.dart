import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/api/api_endpoints.dart';
import 'package:movies_app/core/api/api_manger.dart';
import 'package:movies_app/data/data_source_contract/remote/popular_movie_datasource.dart';
import 'package:movies_app/data/models/popular_api_model/popular_model.dart';

@Injectable(as: PopularMovieDataSource)
class PopularMovieDataSourceImpl extends PopularMovieDataSource {
  ApiManger apiManger;
  @factoryMethod
  PopularMovieDataSourceImpl({required this.apiManger});
  @override
  Future<Either<PopularResponse, String>> getPopulerMovies() async {
    try {
      var response =
          await apiManger.getRequest(endPoints: EndPoints.populerEndPoint);

      PopularResponse populerMovieModel =
          PopularResponse.fromJson(response.data);
      return Left(populerMovieModel);
    } catch (e) {
      log(e.toString());
      return Right(e.toString());
    }
  }
}
