import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/Recomended.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/Releases.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/home_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart';

import '../../../core/DI/Di.dart';
import '../../../core/Utils/routes.dart';
import '../../../core/reusable components/movie_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TopRatedHomeTabViewModel>()..getTopRated(),
      child: Scaffold(
        body:
      SingleChildScrollView(child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          home_tab(),
          releases(),
          SizedBox(height: 50.h,),
          Recommend()
        ],
      ) )
      ,
      ),
    );
  }
}
