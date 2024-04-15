import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/similer_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:movies_app/core/reusable%20components/movie_card.dart';

// ignore: must_be_immutable
class Recommend extends StatelessWidget {
  Recommend({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 434.w,
      color: Theme
          .of(context)
          .colorScheme
          .onBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 8.sp),
            child: Text("recommended",
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 15.sp),
                textAlign: TextAlign.start),
          ),
          SizedBox(height: 15.h),
          BlocBuilder<TopRatedHomeTabViewModel, TopRatedHomeTabStates>(
            builder: (context, state) {
              if (state is TopRatedHomeTabSuccessState) {
                var movies = state.topRated;
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context,
                                    Routes.movieDetailsScreenRouteName,
                                    arguments: SelectedMovie(
                                        id: movies[index].id ?? 0,
                                        title:
                                        movies[index].title ?? ""));
                              },
                              child: MovieCard(
                                movie: movies[index],
                                isFullView: false,
                              ),
                            ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 8.w),
                        itemCount: movies.length),
                  ),
                );
              }
              return const Expanded(
                  child: Center(child: CircularProgressIndicator()));
            },
          ),
          SizedBox(height: 17.h)
        ],
      ),
    );

  }
}
