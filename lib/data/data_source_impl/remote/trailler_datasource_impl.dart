import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/api/api_endpoints.dart';
import 'package:movies_app/core/api/api_manger.dart';
import 'package:movies_app/data/data_source_contract/remote/trailler_datasource.dart';
import 'package:movies_app/data/models/trailler/TraillerResponse.dart';

@Injectable(as: TraillerDataSource)
class TraillerDataSourceImpl extends TraillerDataSource {
  ApiManger apiManger;
  @factoryMethod
  TraillerDataSourceImpl(this.apiManger);
  @override
  Future<Either<TraillerResponse, String>> getTrailler(
      {required num movieId}) async {
    try {
      var response = await apiManger.getRequest(
          endPoints: EndPoints.videoTrailler(movieId: movieId));
      TraillerResponse result = TraillerResponse.fromJson(response.data);
      return Left(result);
    } catch (e) {
      return Right(e.toString());
    }
  }
}