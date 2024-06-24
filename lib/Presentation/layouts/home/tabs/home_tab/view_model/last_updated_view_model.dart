import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/data_source_contract/remote/movies/now_playing_datasource.dart';
import 'package:movies_app/domain/entities/movies/PopularEntitie.dart';
@injectable
class LastUpdatedViewModel extends Cubit<LastUpdatedViewModelState> {
  LastUpdatedViewModel(this.nowPlayingDatasource)
      : super(LastUpdatedViewModelInitial());
  @factoryMethod
  NowPlayingDatasource nowPlayingDatasource;
  static List<PopularEntitie> lastUpdatedList = [];
    getPopularDirectly() {
    emit(LastUpdatedViewModelSuccess(lastUpdatedList));
  }
  getlastUpdatedMovies() async {
    emit(LastUpdatedViewModelLoaded());
    var response = await nowPlayingDatasource.getNowPlaying();
    response.fold((result) {
      emit(LastUpdatedViewModelSuccess(result));
    }, (error) {
      emit(LastUpdatedViewModelError(error));
    });
  }
}

abstract class LastUpdatedViewModelState {}

class LastUpdatedViewModelInitial extends LastUpdatedViewModelState {}

class LastUpdatedViewModelLoaded extends LastUpdatedViewModelState {}

class LastUpdatedViewModelError extends LastUpdatedViewModelState {
  String errorMassage;
  LastUpdatedViewModelError(this.errorMassage);
}

class LastUpdatedViewModelSuccess extends LastUpdatedViewModelState {
  List<PopularEntitie> lastUpdatedMovies;

  LastUpdatedViewModelSuccess(this.lastUpdatedMovies);
}
