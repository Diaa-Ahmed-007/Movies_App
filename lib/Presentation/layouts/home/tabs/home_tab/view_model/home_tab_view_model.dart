

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/entities/populer_entitie.dart';
import 'package:movies_app/domain/use_cases/popular_usecase.dart';
@injectable
class HomeTabViewModel extends Cubit<HomeTabStates>{
 
  HomeTabViewModel(this.popularUseCase):super(HomeTabInitialState());
@factoryMethod
  PopularUseCase popularUseCase;

  getPopular()async{
    emit(HomeTabLoadingState());
    var result = await popularUseCase.call();
    result.fold((categories){
      emit(HomeTabSuccessState(categories));
    }, (error){
      emit(HomeTabErrorState(error));
    });
  }
}

abstract class HomeTabStates{}
class HomeTabInitialState extends HomeTabStates{}
class HomeTabLoadingState extends HomeTabStates{}
class HomeTabSuccessState extends HomeTabStates{
  List<PopularEntitie> categories;
  HomeTabSuccessState(this.categories);
}
class HomeTabErrorState extends HomeTabStates{
  String error;
  HomeTabErrorState(this.error);
}