import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/Presentation/layouts/home/provider/home_provider.dart';
import 'package:movies_app/Presentation/layouts/home/tabs/home_tab/home_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  final List<Widget> navWidget = [
    const HomeTab(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.amber,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Homeprovider provider = Provider.of<Homeprovider>(context);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,
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
