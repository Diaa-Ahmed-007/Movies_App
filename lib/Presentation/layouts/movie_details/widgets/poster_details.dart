import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/movie_details_view_model.dart';
import 'package:movies_app/core/DI/Di.dart';
import 'package:movies_app/core/reusable%20components/movie_show_details.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable components/movie_card.dart';
import '../../../../data/models/movie_details/Genres.dart';
import '../../../../domain/entities/MovieDetailsEntitie.dart';
import 'movie_category.dart';

class PosterDetails extends StatelessWidget {
  final num movieId;
  const PosterDetails({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MovieDetailsHomeTabViewModel>()
          ..getMovieDetails(movieId: movieId),
        child: BlocBuilder<MovieDetailsHomeTabViewModel,
            MovieDetailsHomeTabStates>(
          builder: (context, state) {
            if (state is MovieDetailsHomeTabSuccessState) {
              MovieDetailsEntitie movie = state.details;
              List<Genres> categories = movie.genres ?? [];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                          "${Constants.imageBasePath}${movie.posterPath}",
                          height: 217.h,
                          width: 412.w,
                          fit: BoxFit.fill),
                      Icon(Icons.play_circle_outline_rounded, size: 60.sp),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movie.title ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(fontSize: 18.sp)),
                        MovieSmallDetails(
                          movieId: movie.id!,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            MovieCard(
                                isFullView: true,
                                isLarge: true,
                                movie: movie,
                                cardClicked: () {}),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  height: categories.length <= 3 ? 35.h : 70.h,
                                  width: 210.w,
                                  child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              mainAxisSpacing: 4.h,
                                              crossAxisSpacing: 9.w,
                                              childAspectRatio: 2.0),
                                      itemBuilder: (context, index) =>
                                          MovieCategory(
                                              category: categories[index]),
                                      itemCount: categories.length,
                                      physics:
                                          const NeverScrollableScrollPhysics()),
                                ),
                                SizedBox(height: 12.h),
                                SizedBox(
                                    height: 80.h,
                                    width: 231.w,
                                    child: SingleChildScrollView(
                                        child: Padding(
                                      padding: EdgeInsets.all(3.sp),
                                      child: Text(movie.overview ?? "",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium),
                                    ))),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Icon(Icons.star_rate_rounded,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        size: 30.sp),
                                    SizedBox(width: 2.w),
                                    Text(
                                      movie.voteAverage.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(fontSize: 18.sp),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
            if (state is MovieDetailsHomeTabErrorState) {
              return const Column(
                children: [Text("error")],
              );
            }
            return const Text("");
          },
        ));
  }
}