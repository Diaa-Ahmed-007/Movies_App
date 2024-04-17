import 'package:flutter/material.dart';
import 'package:movies_app/Presentation/cubit/auth&firestore_viewmodel.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:provider/provider.dart';

class splachScreen extends StatefulWidget {
  const splachScreen({super.key});

  @override
  State<splachScreen> createState() => _splachScreenState();
}

class _splachScreenState extends State<splachScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        AuthAndFirestoreViewmodel authAndFirestore =
            AuthAndFirestoreViewmodel.get(context);
        if (authAndFirestore.isfirebaseAuthUser()) {
          Navigator.pushReplacementNamed(context, Routes.homeRouteName);
        } else {
          Navigator.pushReplacementNamed(context, Routes.loginRouteName);
        }
        authAndFirestore.isfirebaseAuthUser();
      },
    );
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.pink, Colors.purple],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/movies.png")),
          Text(
            "Instagram",
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontStyle: FontStyle.italic),
          ),
          Spacer(),
          Image(image: AssetImage("assets/images/Group 23.png")),
        ],
      ),
    );
  }

  // cheekAutologin() async {
  //   authprovider provider = Provider.of<authprovider>(context, listen: false);
  //   if (provider.isfirebaseAuthUser()) {
  //     await provider.retriveDatabaseUserData();
  //     Navigator.pushReplacementNamed(context, homeSreen.route_name);
  //   } else {
  //     Navigator.pushReplacementNamed(context, loginScreen.route_name);
  //   }
  // }
}
