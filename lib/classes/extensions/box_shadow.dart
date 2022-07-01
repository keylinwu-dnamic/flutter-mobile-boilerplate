import 'package:boilerplate/styles/colors.dart';
import 'package:flutter/material.dart';

extension BoxShadowExtension on BoxShadow {
  static get defaultTileShadow => BoxShadow(
        color: CocktailColors.opacity,
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 2),
      );
}
