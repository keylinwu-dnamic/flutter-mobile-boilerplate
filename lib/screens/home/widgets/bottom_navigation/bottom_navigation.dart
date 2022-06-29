import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/styles/colors.dart';
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
    return BottomNavigationBar(
      items: CocktailBottomNavigationType.values
          .map((type) => _buildBottomNavigationItem(type: type))
          .toList(),
      currentIndex: _selectedIndex,
      selectedItemColor: CocktailAppColors.aqua,
      backgroundColor: CocktailAppColors.white,
      onTap: (index) => onNavigationItemTap(index),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem({
    required CocktailBottomNavigationType type,
  }) {
    return BottomNavigationBarItem(
      icon: type.icon,
      label: type.label,
      backgroundColor: Colors.amber.shade100,
    );
  }

  void onNavigationItemTap(int index) {
    ref.read(homeViewModelProvider.notifier).currentNavigationIndex = index;
    setState(() {
      _selectedIndex = index;
    });
  }
}
