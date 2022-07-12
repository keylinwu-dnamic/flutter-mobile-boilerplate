import 'package:flutter/material.dart';

import 'package:boilerplate/constants/constants.dart';

import 'package:boilerplate/styles/cocktail_decoration.dart';
import 'package:boilerplate/styles/cocktail_radius.dart';
import 'package:boilerplate/styles/cocktail_spacing.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final AssetImage? placeHolder;
  final String? image;

  const CustomSliverAppBar(
      {Key? key, required this.title, this.placeHolder, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image != null) {
      return SliverAppBar(
          expandedHeight: Constants.maxExpandedHeightAppBar,
          floating: true,
          pinned: true,
          shape: RoundedRectangleBorder(
              borderRadius: CocktailRadius.getOnlyBottomBorder()),
          title: Text(title),
          flexibleSpace: _avatarSpaceBar());
    } else {
      return SliverAppBar(
        floating: true,
        title: Text(title),
      );
    }
  }

  FlexibleSpaceBar _avatarSpaceBar() {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.only(top: CocktailSpacing.spacingXLG),
        child: Container(
          decoration: CocktailDecoration.avatarAppBarDecoration,
          child: Padding(
            padding: const EdgeInsets.only(bottom: CocktailSpacing.spacingXS),
            child: ClipRRect(
              borderRadius: CocktailRadius.getOnlyBottomBorder(),
              child: FadeInImage(
                placeholder: placeHolder!,
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
