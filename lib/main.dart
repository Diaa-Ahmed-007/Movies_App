import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/MyApp.dart';
import 'package:movies_app/Presentation/cubit/bloc_observer.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/firebase_options.dart';

void main()async{
  Bloc.observer = MyBlocObserver();
  configureDependencies(); 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
    runApp(
    const MyApp()
  );
}
