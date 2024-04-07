import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/data_source_contract/remote/popular_movie_datasource.dart';
import 'package:movies_app/domain/entities/populer_entitie.dart';
import 'package:movies_app/domain/repository_contract/popular_movie_repository_contract.dart';

@Injectable(as: PopularMovieRepository)
class PopularMoviesRepositoryImpl extends PopularMovieRepository {
  PopularMovieDataSource popularMovie;
  @factoryMethod
  PopularMoviesRepositoryImpl(this.popularMovie);
  @override
  Future<Either<List<PopularEntitie>, String>> getPopulerMovies() async {
    var result = await popularMovie.getPopulerMovies();
    return result.fold(
      (response) {
        var popularList = response.results ?? [];
        var popular = popularList.map((e) => e.toPopularEntitie()).toList();
        return Left(popular);
      },
      (error) {
        return Right(error);
      },
    );
  }
}
