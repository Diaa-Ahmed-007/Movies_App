import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/api/api_endpoints.dart';
import 'package:movies_app/core/api/api_manger.dart';
import 'package:movies_app/data/data_source_contract/remote/series/popular_series_datasource.dart';
import 'package:movies_app/data/models/movies/popular_model/popular_response.dart';
import 'package:movies_app/domain/entities/movies/PopularEntitie.dart';

@Injectable(as: PopularSeriesDatasource)
class PopularSeriesDatasourceImpl extends PopularSeriesDatasource {
  ApiManger apiManger;
  @factoryMethod
  PopularSeriesDatasourceImpl(this.apiManger);

  @override
  Future<Either<List<PopularEntitie>, String>> getPopularSeries() async {
    try {
      var response = await apiManger.getRequest(
          endPoints: EndPoints.popularSeriesEndPoint);
      List<PopularEntitie> topRatedSeriesResponse =
          PopularResponse.fromJson(response.data)
                  .results
                  ?.map(
                    (e) => e.toPopularEntitie(),
                  )
                  .toList() ??
              [];
      return Left(topRatedSeriesResponse);
    } catch (e) {
      return Right(e.toString());
    }
  }
}
