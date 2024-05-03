import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/api/api_endpoints.dart';
import 'package:movies_app/core/api/api_manger.dart';
import 'package:movies_app/data/data_source_contract/remote/rating_datasource.dart';
import 'package:movies_app/data/models/rating/RatingResponse.dart';

@Injectable(as: RatingDataSource)
class RatingDataSourceImpl extends RatingDataSource {
  ApiManger apiManger;
  @factoryMethod
  RatingDataSourceImpl(this.apiManger);
  @override
  Future<Either<RatingResponse, String>> getRate({required num movieId}) async {
    try {
      var response = await apiManger.getRequest(
          endPoints: EndPoints.rating(movieId: movieId));
      RatingResponse ratingResponse = RatingResponse.fromJson(response);
      return Left(ratingResponse);
    } catch (e) {
      return Right(e.toString());
    }
  }
}
