import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/Presentation/layouts/provider/auth_provider.dart';
import 'package:movies_app/core/firebase/firestore_helper.dart';
import 'package:movies_app/data/models/firebase_movie_model.dart';

class BookMarkWidget extends StatelessWidget {
  BookMarkWidget({
    super.key,
    required this.authProvider,
    required this.movie,
  });

  final AuthProvider authProvider;
  var movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        enableFeedback: false,
        onTap: () {
          FireStoreHelper.addMovie(
            userid: authProvider.fireBaseUserAuth?.uid ?? "",
            movie: FireBaseMovieModel(
                backdropPath: movie.backdropPath,
                id: movie.id,
                isSelected: true,
                releaseDate: movie.releaseDate,
                title: movie.title),
          );
        },
        child: StreamBuilder(
          stream: FireStoreHelper.getIsCheck(
              userID: authProvider.fireBaseUserAuth!.uid, id: movie.id),
          builder: (context, snapshot) {
            var movie = snapshot.data;
            bool isSelected;
            if (movie == []) {
              isSelected = false;
            } else {
              isSelected = true;
            }
            return Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "assets/Icons/bookmark.svg",
                  colorFilter: ColorFilter.mode(
                      isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                      BlendMode.srcIn),
                ),
                Icon(isSelected ? Icons.check_rounded : Icons.add,
                    color: Colors.white, size: 15)
              ],
            );
          },
        ));
  }
}
