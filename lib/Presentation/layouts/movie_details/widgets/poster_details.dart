import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/movie_details/movie_trailler.dart/thriller_widget.dart';
import 'package:movies_app/Presentation/layouts/movie_details/movie_trailler.dart/view_model/trailler_view_model.dart';
import 'package:movies_app/Presentation/layouts/movie_details/view_model/movie_details_view_model.dart';
import 'package:movies_app/core/DI/Di.dart';
import 'package:movies_app/core/reusable%20components/movie_show_details.dart';

import '../../../../../core/constants.dart';
import '../../../../../data/models/categories/Genres.dart';
import '../../../../core/reusable components/movie_card_old.dart';
import '../../../../domain/entities/movies/MovieDetailsEntitie.dart';
import 'movie_category.dart';

class PosterDetails extends StatelessWidget {
  final num movieId;
  const PosterDetails({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<MovieDetailsHomeTabViewModel>()
              ..getMovieDetails(movieId: movieId),
          ),
          BlocProvider(
            create: (context) => getIt<TraillerViewMode>(),
          )
        ],
        child: BlocBuilder<MovieDetailsHomeTabViewModel,
            MovieDetailsHomeTabStates>(
          builder: (context, state) {
            if (state is MovieDetailsHomeTabSuccessState) {
              MovieDetailsEntitie movie = state.details;
              List<Genres> categories = movie.genres ?? [];
              return BlocListener<TraillerViewMode, TraillerViewModelState>(
                listener: (context, state) {
                  if (state is TraillerSuccessState) {
                    showDialog(
                      barrierColor: const Color.fromARGB(60, 135, 132, 132),
                      context: context,
                      builder: (context) => ThrillerWidget(
                        videoKey: state.traillerEntity[0].key ?? "",
                      ),
                    );
                  }
                  if (state is TraillerErrorState) {
                    Navigator.pop(context);
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(state.error),
                              actions: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black26),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: const Text("try again"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  }
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                  Navigator.pop(context);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CachedNetworkImage(
                          height: 217.h,
                          width: 412.w,
                          imageUrl:
                              "${Constants.imageBasePath}${movie.posterPath}",
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 217.h,
                                width: 412.w,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.white24),
                              )),
                          errorWidget: (context, url, error) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 217.h,
                                width: 412.w,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.white24),
                              )),
                        ),
                        IconButton(
                            onPressed: () {
                              TraillerViewMode.get(context)
                                  .getMovieTrailler(movieId: movieId);
                              BlocListener<TraillerViewMode,
                                  TraillerViewModelState>(
                                listener: (context, state) {},
                              );
                            },
                            icon: Icon(Icons.play_circle_fill_rounded,
                                color: Theme.of(context).colorScheme.primary,
                                size: 60.sp)),
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
                              Material(
                                borderRadius: BorderRadius.circular(5),
                                clipBehavior: Clip.antiAlias,
                                child: MovieCardOld(
                                    isFullView: true,
                                    isLarge: true,
                                    movie: movie),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    height: categories.isEmpty
                                        ? 0
                                        : categories.length <= 3
                                            ? 35.h
                                            : 70.h,
                                    width: categories.isEmpty ? 0 : 210.w,
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
                                  SizedBox(
                                      height: categories.isEmpty ? 0 : 12.h),
                                  SizedBox(
                                      height: movie.overview == null ||
                                              movie.overview == ""
                                          ? 0
                                          : 80.h,
                                      width: movie.overview == null ||
                                              movie.overview == ""
                                          ? 0
                                          : 231.w,
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
                ),
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
