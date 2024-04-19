import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart';
import 'package:movies_app/Presentation/layouts/movie_details/view_model/movie_details_view_model.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/domain/entities/MovieDetailsEntitie.dart';

class WatchListTab extends StatelessWidget {
  const WatchListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MovieDetailsHomeTabViewModel>()..getMovieDetails(movieId: 50),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 60.h)),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Watchlist",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontSize: 22),
                ),
              ),
            ),
            BlocBuilder<MovieDetailsHomeTabViewModel,
                MovieDetailsHomeTabStates>(
              builder: (context, state) {
                if (state is MovieDetailsHomeTabSuccessState) {
                  MovieDetailsEntitie result = state.details;
                  
                  //   return Expanded(
                  //     child: ListView.separated(
                  //         itemBuilder: (context, index) =>
                  //             MovieWidgetForSearchAndWatchList(
                  // movie: result, isSearchTab: isSearchTab),
                  //         separatorBuilder: (context, index) {
                  //           return Padding(
                  //             padding: EdgeInsets.symmetric(vertical: 10.h),
                  //             child: Divider(
                  //               thickness: 1,
                  //               endIndent: 15.w,
                  //               indent: 15.w,
                  //             ),
                  //           );
                  //         },
                  //         itemCount: result.length),
                  //   );
                }
                if (state is SearchTabErrorState) {
                  return SliverToBoxAdapter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/movieNotFound.png"),
                        Text(
                          "No movie found",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  );
                }
                return const SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
