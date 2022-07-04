import 'package:boilerplate/styles/cocktail_shadow.dart';
import 'package:flutter/material.dart';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/styles/cocktail_color.dart';

class CocktailDecoration {
  static const mainTitleDecoration = BoxDecoration(
      image: DecorationImage(
          image: AssetImage(Assets.cocktailsBackgroundApp),
          fit: BoxFit.fill,
          opacity: 0.6),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90), bottomRight: Radius.circular(90)),
      color: CocktailColors.primary);

  static final gridTileDecoration = BoxDecoration(
    color: CocktailColors.white,
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    boxShadow: CocktailShadow.gridTileShadow,
  );

  static const avatarMenuDecoration = BoxDecoration(
      color: CocktailColors.backgroundColor, shape: BoxShape.circle);

  static const borderItemListDecoration = BoxDecoration(
      color: CocktailColors.backgroundColor,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), bottomRight: Radius.circular(20)));
}
