import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/home_screen.dart';
import 'package:movies_app/Presentation/layouts/home/provider/home_provider.dart';
import 'package:movies_app/Presentation/layouts/login/login_screen.dart';
import 'package:movies_app/Presentation/layouts/register/register_screen.dart';
import 'package:movies_app/Presentation/layouts/register/register_viewmodel/register_view_model.dart';
import 'package:movies_app/Presentation/layouts/movie_details/movie_details_screen.dart';
import 'package:movies_app/Presentation/layouts/splash/splash_screen.dart';
import 'package:movies_app/config/theme/Dark.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:provider/provider.dart';

import 'config/theme/Dark.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        routes: {
          Routes.movieDetailsScreenRouteName: (context) =>
              const MovieDetailsScreen(),
          Routes.splashRouteName: (context) => const SplashScreen(),
          Routes.homeRouteName: (context) =>  ChangeNotifierProvider<Homeprovider>(
            create: (context) => Homeprovider(),
            child: HomeScreen())
        },
        theme: DarkTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeRouteName,
      ),
    );
  }
}
