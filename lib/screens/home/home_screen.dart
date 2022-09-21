import 'package:ez_plant_app/screens/home/drawer_section.dart';
import 'package:ez_plant_app/screens/home/main_screen.dart';
import 'package:ez_plant_app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomNavCurrentItemProvider = StateNotifierProvider(
  (ref) {
    return BottomNavBarNotifier(0);
  },
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ZoomDrawer(
      controller: ZoomDrawerController(),
      menuScreen: const DrawerSection(),
      mainScreen: const MainScreen(),
      borderRadius: 24.0,
      showShadow: true,
      mainScreenScale: 0.25,
      angle: -10.0,
      shadowLayer2Color:
          Theme.of(context).drawerTheme.scrimColor!.withAlpha(60),
      shadowLayer1Color: Colors.transparent,
      drawerShadowsBackgroundColor: Theme.of(context).drawerTheme.scrimColor!,
      slideWidth: screenSize.width * 0.65,
      menuBackgroundColor: Theme.of(context).primaryColor,
    );
  }
}
