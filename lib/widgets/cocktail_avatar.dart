import 'package:flutter/material.dart';

import 'package:boilerplate/styles/cocktail_decoration.dart';

class CocktailAvatar extends StatelessWidget {
  final AssetImage image;
  final double size;
  final double spacing;
  final String? imageExtension;

  const CocktailAvatar({
    Key? key,
    required this.image,
    required this.size,
    required this.spacing,
    this.imageExtension,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: (imageExtension == null)
          ? CocktailDecoration.avatarMenuDecoration
          : null,
      child: Padding(
        padding: EdgeInsets.all(spacing),
        child: (imageExtension == null)
            ? CircleAvatar(
                backgroundImage: image,
              )
            : FadeInImage(
                image: NetworkImage(imageExtension!),
                placeholder: image,
                fit: BoxFit.cover),
      ),
    );
  }
}
