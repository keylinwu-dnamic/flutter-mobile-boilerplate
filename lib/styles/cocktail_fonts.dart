import 'package:flutter/material.dart';

import 'package:boilerplate/styles/cocktail_color.dart';

class CocktailsFonts {
  static final headTitle = TextStyle(
      fontFamily: 'Lato',
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
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: CocktailColors.menuTitleColor);
}
