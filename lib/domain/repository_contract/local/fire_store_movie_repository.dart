import 'package:dartz/dartz.dart';
import 'package:movies_app/data/models/firsbase_model/firebase_movie_model.dart';

abstract class FireStoreMovieRepository {
  Future<Either<Stream<List<FireBaseMovieModel>>, String>> getMovie({required String userId});
}