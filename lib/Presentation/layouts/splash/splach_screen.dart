import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/cubit/auth&firestore_viewmodel.dart';
import 'package:movies_app/core/Utils/routes.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    AuthAndFirestoreViewmodel.get(context).isfirebaseAuthUser(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthAndFirestoreViewmodel, AuthAndFirestoreState>(
      listenWhen: (previous, current) {
        if (current is AuthAndFirestoreSuccessState ||
            current is AuthAndFirestoreErrorState ||
            current is AuthAndFirestoreLoadingState) {
          return true;
        }
        return false;
      },
      listener: (context, state) async {
        if (state is AuthAndFirestoreSuccessState) {
          log("fuck shalan");
          Navigator.pushReplacementNamed(
            context, Routes.homeRouteName,
            // arguments: provider.dataBaseUser
          );
        }
        if (state is AuthAndFirestoreErrorState) {
          Navigator.pushReplacementNamed(
            context,
            Routes.loginRouteName,
          );
        }
        log("fuck ahmed");
        await Future.delayed(const Duration(seconds: 3));
      },
      child: Scaffold(
        body: Center(child: Image.asset('assets/images/movies.png')),
      ),
    );
  }
}
