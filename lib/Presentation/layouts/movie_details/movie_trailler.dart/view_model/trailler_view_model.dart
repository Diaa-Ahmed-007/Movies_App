import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/entities/TraillerEntity.dart';
import 'package:movies_app/domain/use_cases/remote/trailler_usecase.dart';

@injectable
class TraillerViewMode extends Cubit<TraillerViewModelState> {
  TraillerViewMode(this.traillerUseCase) : super(TraillerInitialState());
  @factoryMethod
  TraillerUseCase traillerUseCase;
  static TraillerViewMode get(BuildContext context) => BlocProvider.of(context);
  getMovieTrailler({required num movieId}) async {
    emit(TraillerLoadingState());

    var result = await traillerUseCase.call(movieId: movieId);
    return result.fold((response) {
      emit(TraillerSuccessState(response));
    }, (error) {
      emit(TraillerErrorState(error));
    });
  }
}

abstract class TraillerViewModelState {}

class TraillerInitialState extends TraillerViewModelState {}

class TraillerLoadingState extends TraillerViewModelState {}

class TraillerSuccessState extends TraillerViewModelState {
  List<TraillerEntity> traillerEntity;
  TraillerSuccessState(this.traillerEntity);
}

class TraillerErrorState extends TraillerViewModelState {
  String error;
  TraillerErrorState(this.error);
}
