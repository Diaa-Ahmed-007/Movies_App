import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:movies_app/domain/use_cases/Local/register_usecase.dart';

@injectable
class registerViewModel extends Cubit<registerState> {
  @factoryMethod
  registerViewModel(this.registerUsecase) : super(registerinitState());
  static registerViewModel get(BuildContext context) =>BlocProvider.of(context);
  RegisterUsecase registerUsecase;
  register(String email, String password) async {
    log("goin");
    emit(registerLoadingState());
    var credential = await registerUsecase.call(email, password);
    credential.fold((error) => emit(registerErrorState(error)),
        (usercredential) => emit(registeSuccessState(usercredential)));
  }
}

abstract class registerState {}

class registerinitState extends registerState {}
class registerLoadingState extends registerState {}

class registerErrorState extends registerState {
  String errorMessage;
  registerErrorState(this.errorMessage);
}

class registeSuccessState extends registerState {
  UserCredential usercredential;
  registeSuccessState(this.usercredential);
}
