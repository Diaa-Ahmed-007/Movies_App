import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/Utils/routes.dart';
import 'package:movies_app/core/constants.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.imageBath, required this.title, required this.id});
  final String imageBath;
  final String title;
  final int id;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.movieDetailsScreenRouteName,
            arguments: SelectedMovie(id: id, title: title));
      },
      child: Container(
        width: width * 0.4,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: CachedNetworkImage(
            imageUrl: "${Constants.imageBasePath}$imageBath",
            placeholder: (context, url) => Container(
                  color: Theme.of(context).colorScheme.secondary,
                ),
            errorWidget: (context, url, error) => Container(
                  color: Theme.of(context).colorScheme.secondary,
                ),
            fit: BoxFit.cover),
      ),
    );
  }
}

class SelectedMovie {
  String title;
  num id;
  SelectedMovie({required this.id, required this.title});
}
