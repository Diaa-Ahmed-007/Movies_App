// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/Presentation/layouts/provider/auth_provider.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        checkAutoLogin();
        // Navigator.of(context).pushReplacementNamed(Routes.loginRouteName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.fill,
            ),
          ),
          SvgPicture.asset("assets/images/Claquette_app.svg"),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 50),
            child: Text("Enjoy your watching",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Future<void> checkAutoLogin() async {
    AuthProvider provider = Provider.of<AuthProvider>(context, listen: false);
    if (provider.isFirebaseUserLoggedIn()) {
      await provider.retrieveDatabaseUserData();
      Navigator.pushReplacementNamed(context, Routes.homeRouteName,
          arguments: provider.dataBaseUser);
    } else {
      Navigator.pushReplacementNamed(context, Routes.loginRouteName);
    }
  }
}
