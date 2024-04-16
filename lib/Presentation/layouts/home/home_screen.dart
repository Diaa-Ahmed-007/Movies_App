import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/home_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/Recomended_widget.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/releases_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const home_tab(),
            SizedBox(
              height: 25.h,
            ),
            const ReleasesWidget(),
            SizedBox(
              height: 25.h,
            ),
            const RecommendWidget(),
          ],
        ),
      ),
    );
  }
}
