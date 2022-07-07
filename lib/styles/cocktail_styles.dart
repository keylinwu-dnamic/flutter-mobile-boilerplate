import 'package:flutter/material.dart';

import 'package:boilerplate/styles/cocktail_color.dart';
import 'package:boilerplate/styles/cocktail_fonts.dart';

class CocktailStyles {
  static const bottomNavigationBarTheme = BottomNavigationBarThemeData(
    elevation: 10,
    backgroundColor: CocktailColors.white,
    unselectedLabelStyle: CocktailFonts.bottonNavigationLabel,
    selectedLabelStyle: CocktailFonts.bottonNavigationSelectedLabel,
    selectedItemColor: CocktailColors.primary,
  );

  static const appBarTheme = AppBarTheme(
      elevation: 0,
      backgroundColor: CocktailColors.backgroundAppBarColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: CocktailColors.primary),
      titleTextStyle: CocktailFonts.appBartTitle);
}
