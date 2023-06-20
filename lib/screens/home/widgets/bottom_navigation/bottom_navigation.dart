import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/screens/cocktail/cocktail_provider.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cocktail_bottom_navigation_type.dart';

class CocktailBottomNavigation extends ConsumerStatefulWidget {
  const CocktailBottomNavigation({Key? key}) : super(key: key);

  @override
  ConsumerState<CocktailBottomNavigation> createState() =>
      _CocktailBottomNavigationState();
}

class _CocktailBottomNavigationState
    extends ConsumerState<CocktailBottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
          items: CocktailBottomNavigationType.values
              .map((type) => _buildBottomNavigationItem(type: type))
              .toList(),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: (index) => onNavigationItemTap(index),
          unselectedIconTheme:
              const IconThemeData(color: Color(AppColors.green))),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem({
    required CocktailBottomNavigationType type,
  }) {
    return BottomNavigationBarItem(
      icon: type.icon,
      label: type.label,
    );
  }

  void onNavigationItemTap(int index) {
    ref.read(homeViewModelProvider.notifier).currentNavigationIndex = index;
    // ref.read(cocktailProvider.notifier).state = null;
    setState(() {
      _selectedIndex = index;
    });
  }
}
