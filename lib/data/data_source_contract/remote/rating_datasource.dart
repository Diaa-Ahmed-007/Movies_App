import 'package:dartz/dartz.dart';
import 'package:movies_app/data/models/rating/RatingResponse.dart';

abstract class RatingDataSource {
  Future<Either<RatingResponse,String>>getRate({required num movieId});
}