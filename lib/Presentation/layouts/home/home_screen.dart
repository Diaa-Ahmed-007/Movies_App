import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/home_tab_view_model.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/domain/entities/populer_entitie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (BuildContext context) =>
              getIt<HomeTabViewModel>()..getPopular(),
          child: BlocBuilder<HomeTabViewModel, HomeTabStates>(
            builder: (context, state) {
              if (state is HomeTabErrorState) {
                return Center(child: Text(state.error));
              }
              if (state is HomeTabSuccessState) {
                List<PopularEntitie> popular = state.categories;
                return ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.network(
                            "https://image.tmdb.org/t/p/w500${popular[index].backdropPath ?? ""}"),
                        Text(popular[index].title ?? "")
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: popular.length,
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
