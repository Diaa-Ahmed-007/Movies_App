import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/browse_tab/widgets/category_widget.dart';

import '../../../../../data/models/categories/Genres.dart';

class BrowseTab extends StatefulWidget {
  const BrowseTab({Key? key}) : super(key: key);

  @override
  State<BrowseTab> createState() => _BrowseTabState();
}

class _BrowseTabState extends State<BrowseTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 60.h)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Browse Category",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 22),
            ),
          ),
        ),
        BlocBuilder<BrowsTabViewModel, BrowsTabStates>(
          builder: (context, state) {
            if (state is BrowsTabSuccessState) {
              List<Genres> categories = state.categories;
              return SliverPadding(
                padding: EdgeInsets.all(25.sp),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) => CategoryWidget(title: categories[index].name??"" , imageName: Genres.categoriesImagesList[index]),
                    childCount: categories.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisSpacing: 47.h,
                    crossAxisSpacing: 38.w,
                  ),
                ),
              );
            }
            if (state is BrowsTabErrorState) {
              return SliverToBoxAdapter(
                child: Text(
                  "No Categories found",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              );
            }
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
        ),
      ],
    );
  }
}
