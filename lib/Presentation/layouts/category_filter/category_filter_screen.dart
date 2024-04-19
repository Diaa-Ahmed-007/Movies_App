import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/layouts/category_filter/view_model/category_filter_view_model.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/constants.dart';
import 'package:movies_app/data/models/categories/Genres.dart';
import 'package:movies_app/domain/entities/FilterEntitie.dart';

class CategoryFilterScreen extends StatelessWidget {
  const CategoryFilterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Genres category = ModalRoute.of(context)?.settings.arguments as Genres;
    return BlocProvider<CategoryFilterViewModel>(
      create: (context) => getIt<CategoryFilterViewModel>()
        ..filter(categoryId: category.id!.toInt()),
      child: Scaffold(
        body: BlocBuilder<CategoryFilterViewModel, CategoryFilterStates>(
          builder: (context, state) {
            if (state is CategoryFilterSuccessState) {
              List<FilterEntitie> movies = state.filter;
              return ListView.separated(
                itemCount: movies.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 2,
                  );
                },
                itemBuilder: (context, index) {
                  return Image.network(
                      "${Constants.imageBasePath}${movies[index].backdropPath}");
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }
}
