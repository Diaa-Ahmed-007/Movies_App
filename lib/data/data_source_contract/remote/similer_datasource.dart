import 'package:dartz/dartz.dart';
import 'package:movies_app/data/models/similer_model/Similar.dart';

abstract class SimilerDataSource {
  Future<Either<SimilarResponse, String>> getSimiler({required movieId});
}