import 'package:flutter/material.dart';

class CocktailShadow {
  static final List<BoxShadow> gridTileShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      spreadRadius: 0,
      blurRadius: 10,
      offset: const Offset(5, 5), // changes position of shadow
    ),
  ];
}
