import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/popular/popular_item_widget.dart';
import 'package:movies_app/core/DI/Di.dart';

class PopularWidgetBuilder extends StatelessWidget {
  const PopularWidgetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Most Popular",
                  style: Theme.of(context).textTheme.headlineLarge),
              GestureDetector(
                onTap: () {},
                child:  Text(
                  "See All >",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        BlocProvider(
          create: (context) {
            if (PopularHomeTabViewModel.popularList.isEmpty) {
              return getIt<PopularHomeTabViewModel>()..getPopular();
            }
            return getIt<PopularHomeTabViewModel>()..getPopularDirectly();
          },
          child: BlocBuilder<PopularHomeTabViewModel, PopularHomeTabStates>(
              builder: (context, state) {
            if (state is PopularHomeTabSuccessState) {
              PopularHomeTabViewModel.popularList = state.categories;
              return PopularItemWidget(
                popularList: PopularHomeTabViewModel.popularList,
              );
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          }),
        ),
      ],
    );
  }
}
