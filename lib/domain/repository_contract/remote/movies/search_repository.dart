import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movies/SearchEntitie.dart';

abstract class SearchRepository {
  Future<Either<List<SearchEntitie>, String>> search({required String movieName});
}