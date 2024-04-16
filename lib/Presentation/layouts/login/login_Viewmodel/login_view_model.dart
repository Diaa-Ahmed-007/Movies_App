import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/FirebaseAuthErorrCodes.dart';

class loginViewModel extends Cubit<loginState> {
  loginViewModel() : super(loginLoadingState());

  
  register(String email, String password) async {
    emit(loginLoadingState());
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(loginHideLoadingState());
      log(credential.user?.uid ?? "");
    } on FirebaseAuthException catch (e) {
      emit(loginHideLoadingState());
      if (e.code == FirebaseAuthErorrCodes.usernotfound) {
        emit(loginErrorState('No user found for that email.'));
      } else if (e.code == FirebaseAuthErorrCodes.wrongPassword) {
        emit(loginErrorState('Wrong password provided for that user.'));
      }
    } catch (e) {
      emit(loginHideLoadingState());
      emit(loginErrorState(e.toString()));
    }
  }
}

abstract class loginState {}

class loginLoadingState extends loginState {}

class loginHideLoadingState extends loginState {}

class loginErrorState extends loginState {
  String errorMessage;
  loginErrorState(this.errorMessage);
}

class loginSuccessState extends loginState {}
