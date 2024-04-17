import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/cubit/auth&firestore_viewmodel.dart';
import 'package:movies_app/Presentation/layouts/home/home_screen.dart';
import 'package:movies_app/Presentation/layouts/login/login_Viewmodel/login_view_model.dart';
import 'package:movies_app/Presentation/layouts/login/login_screen.dart';
import 'package:movies_app/Presentation/layouts/register/register_screen.dart';
import 'package:movies_app/Presentation/layouts/register/register_viewmodel/register_view_model.dart';
import 'package:movies_app/Presentation/layouts/splash/splach_screen.dart';
import 'package:movies_app/config/theme/Dark.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/Utils/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          routes: {
            Routes.homeRouteName: (context) => const HomeScreen(),
            Routes.splashRouteName: (context) => BlocProvider(
              create: (context) => getIt<AuthAndFirestoreViewmodel>(),
                  child: const splachScreen(),
                ),
            Routes.loginRouteName: (context) => BlocProvider(
                  create: (context) => getIt<loginViewModel>(),
                  child: loginScreen(),
                ),
            Routes.registerRouteName: (context) => BlocProvider(
                  create: (context) => getIt<registerViewModel>(),
                  child: registerScreen(),
                ),
          },
          initialRoute: Routes.loginRouteName,
          debugShowCheckedModeBanner: false,
          theme: DarkTheme.darkTheme,
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}
