import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/home_screen.dart';
import 'package:movies_app/Presentation/layouts/movie_details/movie_details_screen.dart';
import 'package:movies_app/Presentation/layouts/splash/splash_screen.dart';
import 'package:movies_app/core/Utils/routes.dart';

import 'Presentation/layouts/home/home_screen.dart';
import 'Presentation/layouts/home/tabs/home_tab/Recomended.dart';
import 'Presentation/layouts/home/tabs/home_tab/home_tab.dart';
import 'config/theme/Dark.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 892),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
              routes: {
               // Routes.homeRouteName: (context) => const HomeScreen(),
                Routes.movieDetailsScreenRouteName: (context) =>
                    const MovieDetailsScreen(),
                Routes.splashRouteName: (context) => const SplashScreen(),
                Routes.HomeScreen: (context) =>  HomeScreen()
              },
              theme: DarkTheme.darkTheme,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.HomeScreen,
            ));
  }
}
