import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/populer_entitie.dart';

abstract class PopularMovieRepository {
  Future<Either<List<PopularEntitie>, String>> getPopulerMovies();
}
