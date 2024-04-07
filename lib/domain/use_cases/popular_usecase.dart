import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/entities/populer_entitie.dart';
import 'package:movies_app/domain/repository_contract/popular_movie_repository_contract.dart';

@injectable
class PopularUseCase {
  PopularMovieRepository popularMovie;
  @factoryMethod
  PopularUseCase(this.popularMovie);
  Future<Either<List<PopularEntitie>, String>> call() {
    return popularMovie.getPopulerMovies();
  }
}
