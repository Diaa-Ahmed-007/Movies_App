import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/Presentation/layouts/home/provider/home_provider.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/home_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/search_tab/search_tab.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart';
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
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.amber,
      ),
    ];
    Homeprovider provider = Provider.of<Homeprovider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: provider.homeTapIndex,
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
                  "assets/Icons/search.svg",
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
                  "assets/Icons/browse.svg",
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
                  "assets/Icons/watchList.svg",
                  colorFilter: ColorFilter.mode(
                      provider.homeTapIndex == 3
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondary,
                      BlendMode.srcIn),
                ),
                label: 'WATCHLIST'),
          ],
        ),
        body: navWidget[provider.homeTapIndex]);
  }
}
