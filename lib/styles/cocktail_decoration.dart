import 'package:flutter/material.dart';

import 'package:boilerplate/constants/assets.dart';

import 'package:boilerplate/styles/cocktail_color.dart';
import 'package:boilerplate/styles/cocktail_radius.dart';
import 'package:boilerplate/styles/cocktail_shadow.dart';

class CocktailDecoration {
  static final mainTitleDecoration = BoxDecoration(
      image: const DecorationImage(
          image: AssetImage(Assets.cocktailsBackgroundApp),
          fit: BoxFit.fill,
          opacity: 0.6),
      borderRadius: CocktailRadius.getOnlyBottomBorder(),
      color: CocktailColors.primary);

  static final gridTileDecoration = BoxDecoration(
    color: CocktailColors.white,
    borderRadius: CocktailRadius.getAllBorder(),
    boxShadow: CocktailShadow.gridTileShadow,
  );

  static const avatarMenuDecoration = BoxDecoration(
      color: CocktailColors.backgroundColor, shape: BoxShape.circle);

  static final borderItemListDecoration = BoxDecoration(
      color: CocktailColors.backgroundColor,
      borderRadius: CocktailRadius.getOnlyTopBorder());

  static final avatarAppBarDecoration = BoxDecoration(
      borderRadius: CocktailRadius.getOnlyBottomBorder(),
      color: CocktailColors.backgroundColor);
}
