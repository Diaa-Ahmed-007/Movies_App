import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/data_source_contract/remote/movies/popular_datasource.dart';
import 'package:movies_app/domain/entities/movies/PopularEntitie.dart';
import 'package:movies_app/domain/repository_contract/remote/movies/popular_repository.dart';

@Injectable(as: PopularRepository)
class PopularRepositoryImpl extends PopularRepository {
  PopularDataSource popularMovie;
  @factoryMethod
  PopularRepositoryImpl(this.popularMovie);
  @override
  Future<Either<List<PopularEntitie>, String>> getPopulerMovies() async {
    var result = await popularMovie.getPopulerSeries();
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