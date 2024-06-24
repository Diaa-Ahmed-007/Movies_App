import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/widgets/up_coming/up_coming_item_widget.dart';
import 'package:movies_app/core/DI/di.dart';
import 'package:movies_app/core/reusable%20components/List_title_widget.dart';

class UpComingBuilder extends StatelessWidget {
  const UpComingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        if (UpcomingHomeTabViewModel.upComingList.isEmpty) {
          return getIt<UpcomingHomeTabViewModel>()..getUpcoming();
        }
        return getIt<UpcomingHomeTabViewModel>()..getUpcomingDirectly();
      },
      child: BlocBuilder<UpcomingHomeTabViewModel, UpcomingHomeTabStates>(
        builder: (context, state) {
          if (state is UpcomingHomeTabSuccessState) {
            UpcomingHomeTabViewModel.upComingList = state.upcoming;
            return Column(
              children: [
                const ListTitleWidget(
                  title: "Coming Soon",
                  isSeeAllVisable: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: CarouselSlider.builder(
                      carouselController: CarouselController(),
                      itemBuilder: (context, index, index2) {
                        return UpComingItemWidget(
                          imageUrl: UpcomingHomeTabViewModel
                                  .upComingList[index].posterPath ??
                              "",
                          id: UpcomingHomeTabViewModel.upComingList[index].id
                                  ?.toInt() ??
                              0,
                          index: index,
                        );
                      },
                      itemCount: 6,
                      options: CarouselOptions(
                        autoPlayCurve: Curves.fastOutSlowIn,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        viewportFraction: 1,
                        autoPlayInterval: const Duration(seconds: 3),
                      )),
                ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
