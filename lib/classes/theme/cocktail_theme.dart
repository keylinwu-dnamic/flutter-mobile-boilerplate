import 'package:flutter/material.dart';

import 'package:boilerplate/styles/cocktail_color.dart';
import 'package:boilerplate/styles/cocktail_styles.dart';

class CocktailTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: CocktailStyles.appBarTheme,
      bottomNavigationBarTheme: CocktailStyles.bottomNavigationBarTheme,
      scaffoldBackgroundColor: CocktailColors.lightBackground,
      textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Lato'));
}
