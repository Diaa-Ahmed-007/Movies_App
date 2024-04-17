import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthAndFirestoreViewmodel extends Cubit<AuthAndFirestoreState> {
  @factoryMethod
  AuthAndFirestoreViewmodel(super.initialState);
  User? firebaseAuthUser;
  static AuthAndFirestoreViewmodel get(BuildContext context) => BlocProvider.of(context);
  bool isfirebaseAuthUser() {
    if (FirebaseAuth.instance.currentUser == null) return false;
    firebaseAuthUser = FirebaseAuth.instance.currentUser;
    log(firebaseAuthUser?.uid ?? "");
    return true;
  }
}

abstract class AuthAndFirestoreState {}

class InitalState extends AuthAndFirestoreState {}

class AuthAndFirestoreLoadingState extends AuthAndFirestoreState {}

class AuthAndFirestoreErrorState extends AuthAndFirestoreState {
  // String errorMessage;
  // loginErrorState(this.errorMessage);
}

class AuthAndFirestoreSuccessState extends AuthAndFirestoreState {}
