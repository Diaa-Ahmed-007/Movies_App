import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/home_screen.dart';
import 'package:movies_app/Presentation/layouts/movie_details/movie_details_screen.dart';
import 'package:movies_app/Presentation/layouts/splash/splash_screen.dart';
import 'package:movies_app/core/Utils/routes.dart';

import 'config/theme/Dark.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child)=> MaterialApp(
        routes: {
          Routes.homeRouteName: (context) =>  HomeScreen(),
          Routes.movieDetailsScreenRouteName: (context) =>  MovieDetailsScreen(),
          Routes.splashRouteName: (context) => const SplashScreen()
        },
        theme: DarkTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeRouteName,
      )
    );
  }
}
