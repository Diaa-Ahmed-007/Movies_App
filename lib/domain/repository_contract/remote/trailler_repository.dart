import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/TraillerEntity.dart';

abstract class TraillerRepository {
  Future<Either<List<TraillerEntity>, String>> getTrailler({required num movieId});
}