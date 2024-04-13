import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/similer_view_model.dart';
import 'package:movies_app/Presentation/layouts/movie_details/widgets/poster_details.dart';
import 'package:movies_app/core/DI/Di.dart';
import '../../../core/Utils/routes.dart';
import '../../../core/reusable components/movie_card.dart';
class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   SelectedMovie movie = ModalRoute.of(context)?.settings.arguments as SelectedMovie;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        children: [
          PosterDetails(movieId: movie.id),
          SizedBox(height: 10.h),
          BlocProvider(create:(context) => getIt<SimilerHomeTabViewModel>()..getSimiler(movieId: movie.id),
            child: BlocBuilder<SimilerHomeTabViewModel , SimilerHomeTabStates>(
              builder: (context, state) {
                if(state is SimilerHomeTabSuccessState){
                  var movies = state.similer;
                  return Container(
                    height: 246.h,
                    width: 434.w,
                    color: Theme.of(context).colorScheme.onBackground,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Text("More Like This" , style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15.sp),textAlign: TextAlign.start),
                        ),
                        SizedBox(height: 15.h),
                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 10.w),
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context , index) => MovieCard(movie: movies[index],isFullView: false,
                                  cardClicked: () {
                                    Navigator.pushReplacementNamed(context,Routes.movieDetailsScreenRouteName,arguments: SelectedMovie(id: movies[index].id??0 , title: movies[index].title??""));
                                  },
                                ),
                                separatorBuilder: (context , index) => SizedBox(width: 8.w),
                                itemCount: movies.length),
                                ),
                              ),
                        SizedBox(height: 17.h)
                      ],
                    ),
                  );
                }
                if(state is SimilerHomeTabErrorState){
                  return Column(
                    children: [
                      Text("something wrong you have error (${state.error.toString()})"),
                    ],
                  );
                }
                return const Expanded(child: Center(child: CircularProgressIndicator()));
            },
            ),
          )
        ],
      )

    );
  }
}
