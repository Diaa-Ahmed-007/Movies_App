import 'package:flutter/material.dart';
import 'package:movies_app/Presentation/layouts/home/home_screen.dart';
import 'package:movies_app/Presentation/layouts/splash/splash_screen.dart';
import 'package:movies_app/core/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.homeRouteName: (context) => const HomeScreen(),
        Routes.splashRouteName: (context) => const SplashScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
