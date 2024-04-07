import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/domain/entities/UpcomingEntitie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (BuildContext context) =>
              getIt<UpcomingHomeTabViewModel>()..getUpcoming(),
          child: BlocBuilder<UpcomingHomeTabViewModel, UpcomingHomeTabStates>(
            builder: (context, state) {
              if (state is UpcomingHomeTabErrorState) {
                return Center(child: Text(state.error));
              }
              if (state is UpcomingHomeTabSuccessState) {
                List<UpcomingEntitie> upcoming = state.upcoming;

                return ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.network(
                            "https://image.tmdb.org/t/p/w500${upcoming[index].backdropPath ?? ""}"),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: upcoming.length,
                );
              }
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
          )),
    );
  }
}
