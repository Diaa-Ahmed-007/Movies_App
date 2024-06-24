import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/last_updated/last_updated_builder.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/popular/popular_widget_builder.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/popular_series/popular_series_builder.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/top_rated_series/top_rated_series_builder.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/up_coming/up_coming_builder.dart';

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
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(
          child: LastUpdatedBuilder(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(
          child: UpComingBuilder(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(
          child: PopularSeriesBuilder(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
      ],
    );
  }
}
