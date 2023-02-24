import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/bottom_nav/home_inactive.png',
      selectedImagePath: 'assets/bottom_nav/home_activated.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/bottom_nav/history_inactive.png',
      selectedImagePath: 'assets/bottom_nav/history_activated.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/bottom_nav/redeem_inactive.png',
      selectedImagePath: 'assets/bottom_nav/redeem_activated.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/bottom_nav/settings_inactive.png',
      selectedImagePath: 'assets/bottom_nav/settings_activated.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
