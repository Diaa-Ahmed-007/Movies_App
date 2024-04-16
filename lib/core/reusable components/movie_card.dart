import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/core/reusable%20components/movie_show_details.dart';

// ignore: must_be_immutable
class MovieCard extends StatefulWidget {
  late double height;
  late double width;
  bool isFullView;
  bool? isLarge;
  late bool isChecked;
  var movie;

  MovieCard({
    super.key,
    required this.isFullView,
    this.isLarge,
    required this.movie,
    this.isChecked = false,
  }) {
    if (isFullView) {
      if (isLarge ?? false) {
        height = 200.h;
        width = 130.w;
      } else {
        height = 130.h;
        width = 100.w;
      }
    } else {
      height = 270.h;
      width = 120.w;
    }
  }

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topLeft, children: [
      Ink(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(5)),
        child: widget.isFullView
            ? CachedNetworkImage(
                imageUrl:
                    "${Constants.imageBasePath}${widget.movie.backdropPath}",
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5))),
                      child: CachedNetworkImage(
                        imageUrl:
                            "${Constants.imageBasePath}${widget.movie.posterPath}",
                        fit: BoxFit.fill,
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_rate_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 15.sp),
                                SizedBox(width: 2.w),
                                Text(widget.movie.voteAverage.toString(),
                                    style:
                                        Theme.of(context).textTheme.titleSmall)
                              ],
                            ),

                            Text(widget.movie.title ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(fontSize: 10),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2.h),
                            MovieSmallDetails(
                              movieId: widget.movie.id,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(fontSize: 8),
                            ),
                            // function calculate and date format
                          ],
                        ),
                      ))
                ],
              ),
      ),

      //bookMark
      InkWell(
        onTap: () {
          widget.isChecked = !widget.isChecked;
          setState(() {});
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "assets/Icons/bookmark.svg",
              colorFilter: ColorFilter.mode(
                  widget.isChecked
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn),
            ),
            Icon(widget.isChecked ? Icons.check_rounded : Icons.add,
                color: Colors.white, size: 15)
          ],
        ),
      )
    ]);
  }
}

class SelectedMovie {
  String title;
  num id;
  SelectedMovie({required this.id, required this.title});
}
