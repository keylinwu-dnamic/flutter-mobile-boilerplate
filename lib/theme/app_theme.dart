import 'package:flutter/material.dart';

import 'package:boilerplate/theme/styles/cocktail_color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light()
      .copyWith(scaffoldBackgroundColor: CocktailColors.lightBackground);
}
