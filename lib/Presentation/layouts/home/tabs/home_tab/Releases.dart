import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart';

import '../../../../../core/Utils/routes.dart';
import '../../../../../core/reusable components/movie_card.dart';

class releases extends StatelessWidget {

  releases({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 434.w,
      color: Theme.of(context).colorScheme.onBackground,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 8.sp),
            child: Text("releases",
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
                                isFullView: true,
                                isLarge: false
                              ),
                            ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
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
/*Container(
color: Theme.of(context).colorScheme.onPrimary,
child: Column(
children: [
Text("new releases",style: Theme.of(context).textTheme.headlineLarge),
SizedBox(height: 10.h,),
ListView.separated(
scrollDirection: Axis.horizontal,
itemBuilder:(context, index)=>MovieCard(movie: null, isFullView: false,isLarge: false,),
itemCount: 5,
separatorBuilder:(context, index) => SizedBox(width: 10.w,),
),
SizedBox(height: 10.h,),
],
),
)*/