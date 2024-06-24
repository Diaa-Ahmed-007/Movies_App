import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants.dart';

class UpComingItemWidget extends StatelessWidget {
  const UpComingItemWidget(
      {super.key,
      required this.imageUrl,
      required this.index,
      required this.id});
  final String imageUrl;
  final int index;
  final int id;

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    "${Constants.imageBasePath}$imageUrl"),
                fit: BoxFit.fill),
          ),
        ),
        DotsIndicator(
          dotsCount: 6,
          position: index,
          decorator: DotsDecorator(
            activeColor: Theme.of(context).colorScheme.primary,
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            activeSize: const Size(18.0, 9.0),
            color: Colors.white,
            shape: const CircleBorder(),
            size: const Size.square(9.0),
          ),
        ),
      ],
    );
  }
}
