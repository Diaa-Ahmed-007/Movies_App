import 'package:dartz/dartz.dart';
import 'package:movies_app/data/models/popular_api_model/popular_model.dart';

abstract class PopularMovieDataSource {
  Future<Either<PopularResponse, String>> getPopulerMovies();
}
