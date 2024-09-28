import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:pub_dev/presentation/router.gr.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainView();
  }
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        BookmarkRoute(),
        SettingRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const [
            NavigationDestination(
              icon: PhosphorIcon(PhosphorIconsRegular.houseSimple),
              selectedIcon: PhosphorIcon(PhosphorIconsFill.houseSimple),
              label: 'Home',
            ),
            NavigationDestination(
              icon: PhosphorIcon(PhosphorIconsRegular.magnifyingGlass),
              selectedIcon: PhosphorIcon(PhosphorIconsFill.magnifyingGlass),
              label: 'Search',
            ),
            NavigationDestination(
              icon: PhosphorIcon(PhosphorIconsRegular.bookmarkSimple),
              selectedIcon: PhosphorIcon(PhosphorIconsFill.bookmarkSimple),
              label: 'Bookmark',
            ),
            NavigationDestination(
              icon: PhosphorIcon(PhosphorIconsRegular.gear),
              selectedIcon: PhosphorIcon(PhosphorIconsFill.gear),
              label: 'Setting',
            ),
          ],
        );
      },
    );
  }
}
