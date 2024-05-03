import 'package:dartz/dartz.dart';
import 'package:movies_app/data/models/rating/Results.dart';

abstract class RatingRepository {
  Future<Either<List<RateResults>,String>>getRate({required num movieId});
}