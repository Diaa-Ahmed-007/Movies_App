import 'package:dartz/dartz.dart';
import 'package:movies_app/data/models/trailler/TraillerResponse.dart';

abstract class TraillerDataSource {
  Future<Either<TraillerResponse, String>> getTrailler({required num movieId});
}
