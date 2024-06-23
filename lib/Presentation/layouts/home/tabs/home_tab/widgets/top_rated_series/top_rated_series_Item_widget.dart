import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/core/reusable%20components/movie_card.dart';
import 'package:movies_app/core/reusable%20components/movie_card_old.dart';
import 'package:movies_app/domain/entities/series/TopRatedSeriesEntity.dart';

class TopRatedSeriesItemWidget extends StatelessWidget {
  const TopRatedSeriesItemWidget(
      {super.key, required this.topRatedSeriesEntity});
  final TopRatedSeriesEntity topRatedSeriesEntity;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.movieDetailsScreenRouteName,
            arguments: SelectedMovie(
                id: topRatedSeriesEntity.id ?? 0,
                title: topRatedSeriesEntity.name ?? ""));
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: CachedNetworkImageProvider(
                  "${Constants.imageBasePath}${topRatedSeriesEntity.backdropPath}"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
