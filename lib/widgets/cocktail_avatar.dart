import 'package:flutter/material.dart';

import 'package:boilerplate/styles/cocktail_decoration.dart';

class CocktailAvatar extends StatelessWidget {
  final AssetImage image;
  final double size;
  final double spacing;

  const CocktailAvatar({
    Key? key,
    required this.image,
    required this.size,
    required this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: CocktailDecoration.avatarMenuDecoration,
      child: Padding(
        padding: EdgeInsets.all(spacing),
        child: CircleAvatar(
          backgroundImage: image,
        ),
      ),
    );
  }
}
