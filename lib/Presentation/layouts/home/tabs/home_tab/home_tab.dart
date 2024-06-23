import 'package:flutter/material.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/popular/popular_widget_builder.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/top_rated_series/top_rated_series_builder.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(child: TopRatedSeriesBuilder()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(child: PopularWidgetBuilder()),
      ],
    );
  }
}
