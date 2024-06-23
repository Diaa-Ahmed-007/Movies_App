import 'package:flutter/material.dart';
import 'package:movies_app/core/reusable%20components/movie_card.dart';

import '../../../../../../../domain/entities/movies/PopularEntitie.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key, required this.popularList});
  final List<PopularEntitie> popularList;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.25,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return MovieCard(
              imageBath: popularList[index].posterPath ?? "", title: popularList[index].title??"",id: popularList[index].id?.toInt()??0,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: popularList.length),
    );
  }
}
