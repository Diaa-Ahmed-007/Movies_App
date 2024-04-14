import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/movie_details_view_model.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/core/reusable%20components/movie_show_details.dart';
import 'package:movies_app/domain/entities/MovieDetailsEntitie.dart';

typedef OnCardClicked = void Function();

class MovieCard extends StatefulWidget {
  late double height;
  late double width;
  bool isFullView;
  bool? isLarge;
  OnCardClicked cardClicked;
  late bool isChecked;
  var movie;
  MovieCard(
      {super.key,
      required this.isFullView,
      this.isLarge,
      required this.movie,
      this.isChecked = false,
      required this.cardClicked}) {
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
      InkWell(
        onTap: () => widget.cardClicked(),
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(5),
            image: widget.isFullView
                ? DecorationImage(
                    image: NetworkImage(
                        "${Constants.imageBasePath}${widget.movie.backdropPath}"),
                    fit: BoxFit.cover)
                : null,
          ),
          child: widget.isFullView
              ? null
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "${Constants.imageBasePath}${widget.movie.posterPath}"),
                              fit: BoxFit.fill),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall)
                                ],
                              ),

                              Text(widget.movie.title ?? "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(fontSize: 10)),
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
      ),
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
