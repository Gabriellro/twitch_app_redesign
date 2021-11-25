import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitch_app_redesign/src/modules/_export_modules.dart';

import 'home_controller.dart';

import 'package:twitch_app_redesign/src/shared/themes/_export_themes.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          IndexedStack(
            index: controller.currentPage,
            children: const [
              ExplorePage(),
            ],
          ),
          SnakeNavigationBar.color(
            behaviour: snakeBarStyle,
            snakeShape: snakeShape,
            shape: bottomBarShape,
            padding: padding,
            snakeViewColor: AppColors.twitchPurple,
            backgroundColor: AppColors.twitchPurple,
            selectedItemColor: snakeShape == SnakeShape.indicator
                ? AppColors.ausente
                : AppColors.white,
            unselectedItemColor: AppColors.white.withOpacity(0.3),
            elevation: 0,
            showUnselectedLabels: showUnselectedLabels,
            showSelectedLabels: showSelectedLabels,
            currentIndex: controller.currentPage,
            onTap: (index) => setState(() => controller.currentPage = index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_rounded), label: 'tickets'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_rounded),
                  label: 'calendar'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail_outline_rounded), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.live_tv_rounded), label: 'search')
            ],
          ),
        ],
      ),
    );
  }
}
