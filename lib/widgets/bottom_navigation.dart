import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

import 'package:boilerplate/enums/cocktail_bottom_navigation_type.dart';
import 'package:boilerplate/screens/home/home_provider.dart';

class CocktailBottomNavigation extends ConsumerStatefulWidget {
  const CocktailBottomNavigation({Key? key}) : super(key: key);

  @override
  ConsumerState<CocktailBottomNavigation> createState() =>
      _CocktailBottomNavigationState();
}

class _CocktailBottomNavigationState
    extends ConsumerState<CocktailBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex =
        ref.read(homeViewModelProvider.notifier).currentNavigationIndex;

    return BottomNavigationBar(
      items: CocktailBottomNavigationType.values
          .map((type) => _buildBottomNavigationItem(type: type))
          .toList(),
      currentIndex: selectedIndex,
      onTap: (index) {
        ref.read(homeViewModelProvider.notifier).currentNavigationIndex = index;
        context.router.push(CocktailBottomNavigationType.values[index].path);
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem({
    required CocktailBottomNavigationType type,
  }) {
    return BottomNavigationBarItem(icon: type.icon, label: type.label);
  }
}
