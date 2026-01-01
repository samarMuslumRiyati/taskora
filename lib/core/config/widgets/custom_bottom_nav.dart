
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_sizes.dart';
import '../constants/app_strings.dart';
import '../constants/color_manager.dart';
import '../constants/icon_path.dart';


class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    Container(),
    Container(),
    Container(),
  ];

  final List<String> icons = [IconPath.person, IconPath.projects, IconPath.main];
  final List<String> selectedIcons = [IconPath.colordPerson, IconPath.colordProjects, IconPath.colordMain];
  final List<String> labels = [AppStrings.person, AppStrings.projects, AppStrings.mainText];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: pages[_selectedIndex],
      ),

      bottomNavigationBar: ClipRRect(

        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BorderRadiusSize.borderRadiusCircular),
          topRight: Radius.circular(BorderRadiusSize.borderRadiusCircular),
        ),
        child: BottomNavigationBar(

          currentIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
          iconSize: 30,
          selectedItemColor: ColorManager.secondary,
          unselectedItemColor: ColorManager.textSecondary,
          items: List.generate(icons.length, (index) {
            return BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == index ? selectedIcons[index] : icons[index]),
              label: labels[index],
            );
          }),
        ),
      ),
    );
  }
}
