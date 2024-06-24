import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/popular_series_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/popular/popular_item_widget.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/reusable%20components/List_title_widget.dart';

class PopularSeriesBuilder extends StatelessWidget {
  const PopularSeriesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularSeriesViewModel>(
      create: (context) {
        if (PopularSeriesViewModel.popularList.isEmpty) {
          return getIt<PopularSeriesViewModel>()..getPopular();
        }
        return getIt<PopularSeriesViewModel>()..getPopularDirectly();
      },
      child: BlocBuilder<PopularSeriesViewModel, PopularSeriesStates>(
        builder: (context, state) {
          if (state is PopularSeriesSuccessState) {
            PopularSeriesViewModel.popularList = state.categories;
            return Column(
              children: [
                ListTitleWidget(
                  title: "Best Series",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                PopularItemWidget(
                    popularList: PopularSeriesViewModel.popularList),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
