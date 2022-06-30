import 'package:flutter/material.dart';

import 'package:boilerplate/styles/cocktail_color.dart';

class CocktailFonts {
  static final headTitle = TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 48,
      color: CocktailColors.lightTitle,
      shadows: [
        Shadow(
          blurRadius: 20.0,
          color: Colors.black.withOpacity(0.1),
          offset: const Offset(1.0, 5.0),
        ),
      ]);

  static const menuTitle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: CocktailColors.menuTitleColor);

  static const bottonNavigationLabel = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: CocktailColors.grayTitle);

  static const bottonNavigationSelectedLabel = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: CocktailColors.primary);

  static const appBartTitle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 17, color: CocktailColors.black);

  static const listItemTitle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: CocktailColors.menuTitleColor);
}
