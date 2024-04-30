import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/data_source_contract/remote/trailler_datasource.dart';
import 'package:movies_app/domain/entities/TraillerEntity.dart';
import 'package:movies_app/domain/repository_contract/remote/trailler_repository.dart';

@Injectable(as: TraillerRepository)
class TraillerRepositoryImpl extends TraillerRepository {
  TraillerDataSource traillerDataSource;
  @factoryMethod
  TraillerRepositoryImpl(this.traillerDataSource);
  @override
  Future<Either<List<TraillerEntity>, String>> getTrailler(
      {required num movieId}) async {
    var response = await traillerDataSource.getTrailler(movieId: movieId);
    return response.fold((trailler) {
      List<TraillerEntity> videoKey = trailler.results
          ?.map((key) => key.toTraillerEntity()).toList()??[] ;
      
      return Left(videoKey);
    }, (error) {
      return Right(error);
    });
  }
}
