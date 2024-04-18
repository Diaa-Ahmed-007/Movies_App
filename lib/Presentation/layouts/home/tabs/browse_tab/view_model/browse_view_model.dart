import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/models/categories/Genres.dart';
import '../../../../../../domain/use_cases/remote/category_usecase.dart';

@injectable
class BrowsTabViewModel extends Cubit<BrowsTabStates> {
  BrowsTabViewModel(this.categoryUseCase) : super(BrowsTabInitialState());
  @factoryMethod
  CategoryUseCase categoryUseCase;
  getCategory() async {
    emit(BrowsTabLoadingState());
    var categories = await categoryUseCase.call();
    categories.fold(
            (response) => emit(BrowsTabSuccessState(response)),
            (error) => emit(BrowsTabErrorState(error))
    );
  }
}






abstract class BrowsTabStates {}

class BrowsTabInitialState extends BrowsTabStates {}

class BrowsTabLoadingState extends BrowsTabStates {}

class BrowsTabSuccessState extends BrowsTabStates {
List<Genres> categories;
BrowsTabSuccessState(this.categories);
}

class BrowsTabErrorState extends BrowsTabStates {
  String error;
  BrowsTabErrorState(this.error);
}