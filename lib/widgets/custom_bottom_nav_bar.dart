import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:ez_plant_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomBottomNavBar extends HookConsumerWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarProvider =
        ref.read<BottomNavBarNotifier>(bottomNavCurrentItemProvider.notifier);
    return DotNavigationBar(
      currentIndex: navBarProvider.state,
      onTap: navBarProvider.selectPage,
      dotIndicatorColor: Theme.of(context).bottomAppBarTheme.color,
      backgroundColor: Colors.white,
      borderRadius: 30,
      enableFloatingNavBar: true,
      marginR: const EdgeInsets.only(
        left: 10,
        bottom: 10,
        right: 10,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200]!,
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(0, 0),
        )
      ],
      items: [
        DotNavigationBarItem(
          icon: const Icon(Icons.home),
          selectedColor: Theme.of(context).bottomAppBarTheme.color,
          unselectedColor: Theme.of(context).bottomAppBarTheme.color,
        ),
        DotNavigationBarItem(
          icon: const Icon(Icons.person),
          selectedColor: Theme.of(context).bottomAppBarTheme.color,
          unselectedColor: Theme.of(context).bottomAppBarTheme.color,
        ),
        DotNavigationBarItem(
          icon: const FaIcon(
            FontAwesomeIcons.cartShopping,
          ),
          selectedColor: Theme.of(context).bottomAppBarTheme.color,
          unselectedColor: Theme.of(context).bottomAppBarTheme.color,
        ),
        DotNavigationBarItem(
          icon: const Icon(Icons.person),
          selectedColor: Theme.of(context).bottomAppBarTheme.color,
          unselectedColor: Theme.of(context).bottomAppBarTheme.color,
        ),
      ],
    );
  }
}

class BottomNavBarNotifier extends StateNotifier<int> {
  BottomNavBarNotifier(super.state);

  void selectPage(int i) {
    state = i;
  }
}
