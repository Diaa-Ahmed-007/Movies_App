import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:movies_app/domain/use_cases/Local/register_usecase.dart';
@injectable
class registerViewModel extends Cubit<registerState> {
  @factoryMethod
  registerViewModel(this.registerUsecase) : super(registerLoadingState());
   
  RegisterUsecase registerUsecase;
  register(String email, String password) async {
    emit(registerLoadingState());
    final credential = await registerUsecase.call(email, password);
    if (credential == "success") {
      emit(registeSuccessState());
    }
    emit(registerErrorState(credential));
  }
}

abstract class registerState {}

class registerLoadingState extends registerState {}

class registerErrorState extends registerState {
  String errorMessage;
  registerErrorState(this.errorMessage);
}

class registeSuccessState extends registerState {}
