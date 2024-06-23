import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/browse_tab/browse_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/home_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/search_tab/search_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/watch%20list_tab/watch_list_tab.dart';
import 'package:movies_app/Presentation/layouts/provider/home_provider.dart';
import 'package:movies_app/core/DI/Di.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> navWidget = [
      const HomeTab(),
      BlocProvider(
        create: (context) => getIt<SearchTabViewModel>(),
        child: const SearchTab(),
      ),
      BlocProvider(
          create: (BuildContext context) =>
              getIt<BrowseTabViewModel>()..getCategory(),
          child: const BrowseTab()),
      const WatchListTab(),
    ];
    HomeProvider provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: BottomNavigationBar(
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: provider.homeTapIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            provider.changeHomeTapIndex(value);
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                icon: SvgPicture.asset(
                  "assets/Icons/home.svg",
                  colorFilter: ColorFilter.mode(
                      provider.homeTapIndex == 0
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondary,
                      BlendMode.srcIn),
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                icon: SvgPicture.asset(
                  "assets/Icons/discover.svg",
                  colorFilter: ColorFilter.mode(
                      provider.homeTapIndex == 1
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondary,
                      BlendMode.srcIn),
                ),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                icon: SvgPicture.asset(
                  "assets/Icons/bookmark.svg",
                  colorFilter: ColorFilter.mode(
                      provider.homeTapIndex == 2
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondary,
                      BlendMode.srcIn),
                ),
                label: 'BROWSE'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                icon: SvgPicture.asset(
                  "assets/Icons/profile.svg",
                  colorFilter: ColorFilter.mode(
                      provider.homeTapIndex == 3
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondary,
                      BlendMode.srcIn),
                ),
                label: 'WATCHLIST'),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/images/FILMORA-appbar.png"),
        centerTitle: false,
        actions: [
          SvgPicture.asset(
            "assets/Icons/search.svg",
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSecondary, BlendMode.srcIn),
          ),
          const SizedBox(width: 20),
          SvgPicture.asset("assets/Icons/menu.svg",
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSecondary, BlendMode.srcIn)),
          const SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: navWidget[provider.homeTapIndex],
      ),
    );
  }
}
