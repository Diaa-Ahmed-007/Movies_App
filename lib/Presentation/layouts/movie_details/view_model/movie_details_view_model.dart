import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/models/rating/Results.dart';
import 'package:movies_app/domain/entities/MovieDetailsEntitie.dart';
import 'package:movies_app/domain/repository_contract/remote/rating_repository.dart';
import 'package:movies_app/domain/use_cases/remote/movie_details_usecase.dart';

@injectable
class MovieDetailsHomeTabViewModel extends Cubit<MovieDetailsHomeTabStates> {
  MovieDetailsHomeTabViewModel(this.movieDetailsUseCase, this.ratingRepository)
      : super(MovieDetailsHomeTabInitialState());
  @factoryMethod
  MovieDetailsUseCase movieDetailsUseCase;
  RatingRepository ratingRepository;
  getMovieDetails({required num movieId}) async {
    emit(MovieDetailsHomeTabLoadingState());
    var result = await movieDetailsUseCase.call(movieId: movieId);
    var rate= await ratingRepository.getRate(movieId: movieId);
    result.fold(
      (details) {
        rate.fold((rateResults) {
          emit(MovieDetailsHomeTabSuccessState(details, rateResults));
        } ,(error) {
          emit(MovieDetailsHomeTabErrorState(error));
        } ,);
        
      },
      (error) {
        emit(MovieDetailsHomeTabErrorState(error));
      },
    );
  }
}

abstract class MovieDetailsHomeTabStates {}

class MovieDetailsHomeTabInitialState extends MovieDetailsHomeTabStates {}

class MovieDetailsHomeTabLoadingState extends MovieDetailsHomeTabStates {}

class MovieDetailsHomeTabSuccessState extends MovieDetailsHomeTabStates {
  MovieDetailsEntitie details;
  List<RateResults> rate;
  MovieDetailsHomeTabSuccessState(this.details, this.rate);
}

class MovieDetailsHomeTabErrorState extends MovieDetailsHomeTabStates {
  String error;
  MovieDetailsHomeTabErrorState(this.error);
}
