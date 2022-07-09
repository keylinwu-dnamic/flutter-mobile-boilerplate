import 'package:flutter/material.dart';

class CocktailRadius {
  static const radiusXXS = 5.0;
  static const radiusXS = 10.0;
  static const radiusSM = 20.0;
  static const radiusMD = 50.0;
  static const radiusLG = 90.0;

  static BorderRadius getOnlyBottomBorder() {
    return const BorderRadius.only(
        bottomLeft: Radius.circular(radiusLG),
        bottomRight: Radius.circular(radiusLG));
  }

  static BorderRadius getOnlyTopBorder() {
    return const BorderRadius.only(
        topRight: Radius.circular(CocktailRadius.radiusSM),
        bottomRight: Radius.circular(CocktailRadius.radiusSM));
  }

  static BorderRadius getAllBorder() {
    return const BorderRadius.all(Radius.circular(CocktailRadius.radiusSM));
  }
}
