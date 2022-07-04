import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/classes/extensions/box_shadow.dart';

class CocktailItem extends StatelessWidget {
  const CocktailItem({
    Key? key,
    required this.name,
    this.isTypeOfGlass = false,
  }) : super(key: key);

  final String name;
  final bool? isTypeOfGlass;

  String getImage() {
    if (isTypeOfGlass!) {
      return Assets.glass;
    } else {
      return Assets.categories;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Spacing.spacingXS),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadowExtension.defaultTileShadow,
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(Spacing.spacingSM),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: Sizes.sizeMD,
                color: CocktailColors.secondary,
              ),
            ),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Image.asset(
                getImage(),
                width: Sizes.sizeXXL,
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: Sizes.sizeSM, right: Sizes.sizeSM),
                child: SizedBox(
                  height: Sizes.sizeXXL,
                  child: VerticalDivider(
                    color: CocktailColors.primary,
                    thickness: 1,
                  ),
                ),
              ),
              Text(
                name,
                style: Fonts.tileTitile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
