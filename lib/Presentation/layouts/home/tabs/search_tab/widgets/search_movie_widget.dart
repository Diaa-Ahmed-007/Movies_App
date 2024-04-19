import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/core/reusable%20components/movie_card.dart';
import 'package:movies_app/core/reusable%20components/movie_show_details.dart';
import 'package:movies_app/domain/entities/SearchEntitie.dart';

class SearchMovieWidget extends StatelessWidget {
  const SearchMovieWidget({super.key, required this.movie});
  final SearchEntitie movie;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        Navigator.pushNamed(context, Routes.movieDetailsScreenRouteName,
            arguments:
                SelectedMovie(id: movie.id ?? 0, title: movie.title ?? ""));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Row(
          children: [
            SizedBox(
              height: 100.h,
              width: 150.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: CachedNetworkImage(
                  imageUrl: "${Constants.imageBasePath}${movie.backdropPath}",
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Container(color: Theme.of(context).colorScheme.onPrimaryContainer,),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title ?? "",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 15),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  MovieSmallDetails(
                    movieId: movie.id ?? 0,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(fontSize: 14.sp),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
